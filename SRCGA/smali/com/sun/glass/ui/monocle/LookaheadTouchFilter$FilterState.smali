.class final enum Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;
.super Ljava/lang/Enum;
.source "LookaheadTouchFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/monocle/LookaheadTouchFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

.field public static final enum CLEAN:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

.field public static final enum PENDING_MODIFIABLE:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

.field public static final enum PENDING_UNMODIFIABLE:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    new-instance v0, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CLEAN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->CLEAN:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    .line 43
    new-instance v0, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PENDING_UNMODIFIABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->PENDING_UNMODIFIABLE:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    .line 50
    new-instance v0, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PENDING_MODIFIABLE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->PENDING_MODIFIABLE:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->CLEAN:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->PENDING_UNMODIFIABLE:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->PENDING_MODIFIABLE:Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->$VALUES:[Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->$VALUES:[Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    invoke-virtual {v0}, [Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/glass/ui/monocle/LookaheadTouchFilter$FilterState;

    return-object v0
.end method

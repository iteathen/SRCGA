.class public final enum Lcom/sun/javafx/scene/CssFlags;
.super Ljava/lang/Enum;
.source "CssFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/scene/CssFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/scene/CssFlags;

.field public static final enum CLEAN:Lcom/sun/javafx/scene/CssFlags;

.field public static final enum DIRTY_BRANCH:Lcom/sun/javafx/scene/CssFlags;

.field public static final enum REAPPLY:Lcom/sun/javafx/scene/CssFlags;

.field public static final enum UPDATE:Lcom/sun/javafx/scene/CssFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lcom/sun/javafx/scene/CssFlags;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CLEAN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/CssFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    .line 44
    new-instance v0, Lcom/sun/javafx/scene/CssFlags;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DIRTY_BRANCH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/CssFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/CssFlags;->DIRTY_BRANCH:Lcom/sun/javafx/scene/CssFlags;

    .line 50
    new-instance v0, Lcom/sun/javafx/scene/CssFlags;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UPDATE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/CssFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/CssFlags;->UPDATE:Lcom/sun/javafx/scene/CssFlags;

    .line 57
    new-instance v0, Lcom/sun/javafx/scene/CssFlags;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "REAPPLY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/CssFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/CssFlags;->REAPPLY:Lcom/sun/javafx/scene/CssFlags;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/javafx/scene/CssFlags;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->DIRTY_BRANCH:Lcom/sun/javafx/scene/CssFlags;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->UPDATE:Lcom/sun/javafx/scene/CssFlags;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->REAPPLY:Lcom/sun/javafx/scene/CssFlags;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/scene/CssFlags;->$VALUES:[Lcom/sun/javafx/scene/CssFlags;

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
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/CssFlags;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/scene/CssFlags;
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/scene/CssFlags;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/CssFlags;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/scene/CssFlags;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sun/javafx/scene/CssFlags;->$VALUES:[Lcom/sun/javafx/scene/CssFlags;

    invoke-virtual {v0}, [Lcom/sun/javafx/scene/CssFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/scene/CssFlags;

    return-object v0
.end method

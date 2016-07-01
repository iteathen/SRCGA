.class final enum Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;
.super Ljava/lang/Enum;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

.field public static final enum CLOSE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

.field public static final enum DESTROY:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

.field public static final enum EXPOSE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

.field public static final enum FOCUS:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

.field public static final enum FOCUS_DISABLED:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

.field public static final enum MOVE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

.field public static final enum RESIZE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

.field public static final enum UNGRAB:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 243
    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CLOSE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->CLOSE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DESTROY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->DESTROY:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "EXPOSE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->EXPOSE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FOCUS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->FOCUS:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "MOVE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->MOVE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RESIZE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->RESIZE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UNGRAB"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->UNGRAB:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FOCUS_DISABLED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->FOCUS_DISABLED:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    .line 242
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->CLOSE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->DESTROY:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->EXPOSE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->FOCUS:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->MOVE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->RESIZE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->UNGRAB:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->FOCUS_DISABLED:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->$VALUES:[Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

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
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->$VALUES:[Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    invoke-virtual {v0}, [Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    return-object v0
.end method

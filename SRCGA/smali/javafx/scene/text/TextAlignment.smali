.class public final enum Ljavafx/scene/text/TextAlignment;
.super Ljava/lang/Enum;
.source "TextAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/text/TextAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/text/TextAlignment;

.field public static final enum CENTER:Ljavafx/scene/text/TextAlignment;

.field public static final enum JUSTIFY:Ljavafx/scene/text/TextAlignment;

.field public static final enum LEFT:Ljavafx/scene/text/TextAlignment;

.field public static final enum RIGHT:Ljavafx/scene/text/TextAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    new-instance v0, Ljavafx/scene/text/TextAlignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LEFT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/text/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    .line 42
    new-instance v0, Ljavafx/scene/text/TextAlignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/text/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/text/TextAlignment;->CENTER:Ljavafx/scene/text/TextAlignment;

    .line 47
    new-instance v0, Ljavafx/scene/text/TextAlignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RIGHT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/text/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/text/TextAlignment;->RIGHT:Ljavafx/scene/text/TextAlignment;

    .line 52
    new-instance v0, Ljavafx/scene/text/TextAlignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "JUSTIFY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/text/TextAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/text/TextAlignment;->JUSTIFY:Ljavafx/scene/text/TextAlignment;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljavafx/scene/text/TextAlignment;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/text/TextAlignment;->CENTER:Ljavafx/scene/text/TextAlignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/text/TextAlignment;->RIGHT:Ljavafx/scene/text/TextAlignment;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/text/TextAlignment;->JUSTIFY:Ljavafx/scene/text/TextAlignment;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/text/TextAlignment;->$VALUES:[Ljavafx/scene/text/TextAlignment;

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
    .line 32
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextAlignment;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/text/TextAlignment;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/text/TextAlignment;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/TextAlignment;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/text/TextAlignment;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Ljavafx/scene/text/TextAlignment;->$VALUES:[Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v0}, [Ljavafx/scene/text/TextAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/text/TextAlignment;

    return-object v0
.end method

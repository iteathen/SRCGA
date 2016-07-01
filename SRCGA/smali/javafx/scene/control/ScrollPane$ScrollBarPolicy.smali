.class public final enum Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
.super Ljava/lang/Enum;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ScrollPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollBarPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

.field public static final enum ALWAYS:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

.field public static final enum AS_NEEDED:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

.field public static final enum NEVER:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 814
    new-instance v0, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NEVER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->NEVER:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    .line 818
    new-instance v0, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ALWAYS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->ALWAYS:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    .line 822
    new-instance v0, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "AS_NEEDED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->AS_NEEDED:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    .line 810
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->NEVER:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->ALWAYS:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->AS_NEEDED:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->$VALUES:[Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

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
    .line 810
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    .locals 3

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    .locals 1

    .prologue
    .line 810
    sget-object v0, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->$VALUES:[Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    invoke-virtual {v0}, [Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    return-object v0
.end method

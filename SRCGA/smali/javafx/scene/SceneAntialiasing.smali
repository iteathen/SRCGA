.class public final Ljavafx/scene/SceneAntialiasing;
.super Ljava/lang/Object;
.source "SceneAntialiasing.java"


# static fields
.field public static final BALANCED:Ljavafx/scene/SceneAntialiasing;

.field public static final DISABLED:Ljavafx/scene/SceneAntialiasing;


# instance fields
.field private final val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljavafx/scene/SceneAntialiasing;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "DISABLED"

    invoke-direct {v1, v2}, Ljavafx/scene/SceneAntialiasing;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    .line 61
    new-instance v0, Ljavafx/scene/SceneAntialiasing;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "BALANCED"

    invoke-direct {v1, v2}, Ljavafx/scene/SceneAntialiasing;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/SceneAntialiasing;->BALANCED:Ljavafx/scene/SceneAntialiasing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneAntialiasing;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 70
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneAntialiasing;->val:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneAntialiasing;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SceneAntialiasing;->val:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SceneAntialiasing;
    return-object v0
.end method

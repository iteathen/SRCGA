.class public Ljavafx/scene/PointLight;
.super Ljavafx/scene/LightBase;
.source "PointLight.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PointLight;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/LightBase;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PointLight;
    move-object v1, p1

    .local v1, "color":Ljavafx/scene/paint/Color;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/LightBase;-><init>(Ljavafx/scene/paint/Color;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PointLight;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGPointLight;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGPointLight;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/PointLight;
    return-object v0
.end method

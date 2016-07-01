.class public abstract Lcom/sun/javafx/sg/prism/NGCamera;
.super Lcom/sun/javafx/sg/prism/NGNode;
.source "NGCamera.java"


# static fields
.field public static final INSTANCE:Lcom/sun/javafx/sg/prism/NGCamera;


# instance fields
.field protected projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

.field protected viewHeight:D

.field protected viewWidth:D

.field private worldPosition:Lcom/sun/javafx/geom/Vec3d;

.field protected worldTransform:Lcom/sun/javafx/geom/transform/Affine3D;

.field protected zFar:D

.field protected zNear:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/sun/javafx/sg/prism/NGDefaultCamera;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGDefaultCamera;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCamera;->INSTANCE:Lcom/sun/javafx/sg/prism/NGCamera;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGNode;-><init>()V

    .line 40
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCamera;->worldTransform:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 44
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/sun/javafx/sg/prism/NGCamera;->viewWidth:D

    .line 45
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/sun/javafx/sg/prism/NGCamera;->viewHeight:D

    .line 47
    move-object v1, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    iput-wide v2, v1, Lcom/sun/javafx/sg/prism/NGCamera;->zNear:D

    .line 48
    move-object v1, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iput-wide v2, v1, Lcom/sun/javafx/sg/prism/NGCamera;->zFar:D

    .line 51
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Vec3d;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCamera;->worldPosition:Lcom/sun/javafx/geom/Vec3d;

    .line 53
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCamera;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    return-void
.end method


# virtual methods
.method public abstract computePickRay(FFLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;
.end method

.method protected doRender(Lcom/sun/prism/Graphics;)V
    .locals 0
    .param p1, "g"    # Lcom/sun/prism/Graphics;

    .prologue
    .line 56
    return-void
.end method

.method public getFarClip()D
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/sg/prism/NGCamera;->zFar:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCamera;
    return-wide v0
.end method

.method public getNearClip()D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/sg/prism/NGCamera;->zNear:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCamera;
    return-wide v0
.end method

.method public getPositionInWorld(Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v1, p1

    .local v1, "pos":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 118
    new-instance v2, Lcom/sun/javafx/geom/Vec3d;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Vec3d;-><init>()V

    move-object v1, v2

    .line 120
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCamera;->worldPosition:Lcom/sun/javafx/geom/Vec3d;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 121
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCamera;
    return-object v0
.end method

.method public getProjViewTx(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .locals 5

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 111
    new-instance v2, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    move-object v1, v2

    .line 113
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCamera;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->set(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCamera;
    return-object v0
.end method

.method public getViewHeight()D
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/sg/prism/NGCamera;->viewHeight:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCamera;
    return-wide v0
.end method

.method public getViewWidth()D
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/sg/prism/NGCamera;->viewWidth:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCamera;
    return-wide v0
.end method

.method protected hasOverlappingContents()Z
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCamera;
    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 0
    .param p1, "g"    # Lcom/sun/prism/Graphics;

    .prologue
    .line 59
    return-void
.end method

.method public setFarClip(F)V
    .locals 6

    .prologue
    .line 74
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move v2, p1

    .local v2, "farClip":F
    move-object v3, v1

    move v4, v2

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/sg/prism/NGCamera;->zFar:D

    .line 75
    return-void
.end method

.method public setNearClip(F)V
    .locals 6

    .prologue
    .line 66
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move v2, p1

    .local v2, "nearClip":F
    move-object v3, v1

    move v4, v2

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/sg/prism/NGCamera;->zNear:D

    .line 67
    return-void
.end method

.method public setPosition(Lcom/sun/javafx/geom/Vec3d;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v1, p1

    .local v1, "position":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCamera;->worldPosition:Lcom/sun/javafx/geom/Vec3d;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/Vec3d;->set(Lcom/sun/javafx/geom/Vec3d;)V

    .line 103
    return-void
.end method

.method public setProjViewTransform(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v1, p1

    .local v1, "projViewTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCamera;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->set(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v2

    .line 99
    return-void
.end method

.method public setViewHeight(D)V
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-wide v1, p1

    .local v1, "viewHeight":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/sg/prism/NGCamera;->viewHeight:D

    .line 91
    return-void
.end method

.method public setViewWidth(D)V
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-wide v1, p1

    .local v1, "viewWidth":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/sg/prism/NGCamera;->viewWidth:D

    .line 83
    return-void
.end method

.method public setWorldTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCamera;
    move-object v1, p1

    .local v1, "localToWorldTx":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCamera;->worldTransform:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 107
    return-void
.end method

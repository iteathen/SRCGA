.class public Lcom/sun/javafx/sg/prism/NGLightBase;
.super Lcom/sun/javafx/sg/prism/NGNode;
.source "NGLightBase.java"


# instance fields
.field private color:Lcom/sun/prism/paint/Color;

.field private lightOn:Z

.field scopedNodes:[Ljava/lang/Object;

.field private worldTransform:Lcom/sun/javafx/geom/transform/Affine3D;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGNode;-><init>()V

    .line 39
    move-object v1, v0

    sget-object v2, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGLightBase;->color:Lcom/sun/prism/paint/Color;

    .line 40
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGLightBase;->lightOn:Z

    .line 100
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGLightBase;->scopedNodes:[Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method final affects(Lcom/sun/javafx/sg/prism/NGShape3D;)Z
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v1, p1

    .local v1, "n3d":Lcom/sun/javafx/sg/prism/NGShape3D;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/sg/prism/NGLightBase;->lightOn:Z

    if-nez v5, :cond_0

    .line 111
    const/4 v5, 0x0

    move v0, v5

    .line 130
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    :goto_0
    return v0

    .line 112
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGLightBase;->scopedNodes:[Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 113
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 115
    :cond_1
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    :goto_1
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGLightBase;->scopedNodes:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v5, v6, :cond_5

    .line 116
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGLightBase;->scopedNodes:[Ljava/lang/Object;

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 117
    .local v3, "scopedNode":Ljava/lang/Object;
    move-object v5, v3

    instance-of v5, v5, Lcom/sun/javafx/sg/prism/NGGroup;

    if-eqz v5, :cond_4

    .line 118
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGShape3D;->getParent()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v5

    move-object v4, v5

    .line 119
    .local v4, "parent":Lcom/sun/javafx/sg/prism/NGNode;
    :goto_2
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 120
    move-object v5, v3

    move-object v6, v4

    if-ne v5, v6, :cond_2

    .line 121
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 123
    :cond_2
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGNode;->getParent()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v5

    move-object v4, v5

    goto :goto_2

    .line 125
    .line 115
    .end local v4    # "parent":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_4
    move-object v5, v3

    move-object v6, v1

    if-ne v5, v6, :cond_3

    .line 126
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 130
    .end local v3    # "scopedNode":Ljava/lang/Object;
    :cond_5
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method protected doRender(Lcom/sun/prism/Graphics;)V
    .locals 0
    .param p1, "g"    # Lcom/sun/prism/Graphics;

    .prologue
    .line 52
    return-void
.end method

.method public getColor()Lcom/sun/prism/paint/Color;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGLightBase;->color:Lcom/sun/prism/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    return-object v0
.end method

.method public getWorldTransform()Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGLightBase;->worldTransform:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    return-object v0
.end method

.method protected hasOverlappingContents()Z
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    return v0
.end method

.method public isLightOn()Z
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGLightBase;->lightOn:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 0
    .param p1, "g"    # Lcom/sun/prism/Graphics;

    .prologue
    .line 54
    return-void
.end method

.method public setColor(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGLightBase;->color:Lcom/sun/prism/paint/Color;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/prism/paint/Color;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/paint/Color;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGLightBase;->color:Lcom/sun/prism/paint/Color;

    .line 69
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGLightBase;->visualsChanged()V

    .line 71
    :cond_0
    return-void
.end method

.method public setLightOn(Z)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/sg/prism/NGLightBase;->lightOn:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 79
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGLightBase;->visualsChanged()V

    .line 80
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGLightBase;->lightOn:Z

    .line 82
    :cond_0
    return-void
.end method

.method public setScope([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v1, p1

    .local v1, "scopedNodes":[Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGLightBase;->scopedNodes:[Ljava/lang/Object;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 104
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGLightBase;->scopedNodes:[Ljava/lang/Object;

    .line 105
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGLightBase;->visualsChanged()V

    .line 107
    :cond_0
    return-void
.end method

.method public setTransformMatrix(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/sg/prism/NGNode;->setTransformMatrix(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 49
    return-void
.end method

.method public setWorldTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v1, p1

    .local v1, "localToSceneTx":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGLightBase;->worldTransform:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 98
    return-void
.end method

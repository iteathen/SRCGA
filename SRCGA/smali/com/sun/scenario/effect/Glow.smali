.class public Lcom/sun/scenario/effect/Glow;
.super Lcom/sun/scenario/effect/DelegateEffect;
.source "Glow.java"


# instance fields
.field private final blend:Lcom/sun/scenario/effect/Blend;

.field private final blur:Lcom/sun/scenario/effect/GaussianBlur;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Glow;
    move-object v1, v0

    sget-object v2, Lcom/sun/scenario/effect/Glow;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v1, v2}, Lcom/sun/scenario/effect/Glow;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/sun/scenario/effect/Effect;)V
    .locals 10

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Glow;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/DelegateEffect;-><init>(Lcom/sun/scenario/effect/Effect;)V

    .line 69
    move-object v3, v0

    new-instance v4, Lcom/sun/scenario/effect/GaussianBlur;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/high16 v6, 0x41200000    # 10.0f

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/scenario/effect/GaussianBlur;-><init>(FLcom/sun/scenario/effect/Effect;)V

    iput-object v4, v3, Lcom/sun/scenario/effect/Glow;->blur:Lcom/sun/scenario/effect/GaussianBlur;

    .line 71
    new-instance v3, Lcom/sun/scenario/effect/Crop;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/Glow;->blur:Lcom/sun/scenario/effect/GaussianBlur;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/scenario/effect/Crop;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    move-object v2, v3

    .line 72
    .local v2, "crop":Lcom/sun/scenario/effect/Crop;
    move-object v3, v0

    new-instance v4, Lcom/sun/scenario/effect/Blend;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sget-object v6, Lcom/sun/scenario/effect/Blend$Mode;->ADD:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/scenario/effect/Blend;-><init>(Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    iput-object v4, v3, Lcom/sun/scenario/effect/Glow;->blend:Lcom/sun/scenario/effect/Blend;

    .line 73
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Glow;->blend:Lcom/sun/scenario/effect/Blend;

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Blend;->setOpacity(F)V

    .line 74
    return-void
.end method


# virtual methods
.method protected getDelegate()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Glow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/Glow;->blend:Lcom/sun/scenario/effect/Blend;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Glow;
    return-object v0
.end method

.method public final getInput()Lcom/sun/scenario/effect/Effect;
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Glow;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Glow;->getInputs()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Glow;
    return-object v0
.end method

.method public getLevel()F
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Glow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/Glow;->blend:Lcom/sun/scenario/effect/Blend;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/Blend;->getOpacity()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Glow;
    return v0
.end method

.method public setInput(Lcom/sun/scenario/effect/Effect;)V
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Glow;
    move-object v1, p1

    .local v1, "input":Lcom/sun/scenario/effect/Effect;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/scenario/effect/Glow;->setInput(ILcom/sun/scenario/effect/Effect;)V

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/Glow;->blur:Lcom/sun/scenario/effect/GaussianBlur;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/GaussianBlur;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 99
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/Glow;->blend:Lcom/sun/scenario/effect/Blend;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/Blend;->setBottomInput(Lcom/sun/scenario/effect/Effect;)V

    .line 100
    return-void
.end method

.method public setLevel(F)V
    .locals 5

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Glow;
    move v1, p1

    .local v1, "level":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Glow;->blend:Lcom/sun/scenario/effect/Blend;

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Blend;->getOpacity()F

    move-result v3

    move v2, v3

    .line 126
    .local v2, "old":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Glow;->blend:Lcom/sun/scenario/effect/Blend;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/scenario/effect/Blend;->setOpacity(F)V

    .line 127
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Glow;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Glow;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Glow;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Glow;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Glow;->getDefaultedInput(ILcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/scenario/effect/Effect;->untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Glow;
    return-object v0
.end method

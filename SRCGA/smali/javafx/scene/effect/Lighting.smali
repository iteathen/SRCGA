.class public Ljavafx/scene/effect/Lighting;
.super Ljavafx/scene/effect/Effect;
.source "Lighting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/effect/Lighting$LightChangeListener;
    }
.end annotation


# instance fields
.field private bumpInput:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private contentInput:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultLight:Ljavafx/scene/effect/Light;

.field private diffuseConstant:Ljavafx/beans/property/DoubleProperty;

.field private light:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Light;",
            ">;"
        }
    .end annotation
.end field

.field private final lightChangeListener:Ljavafx/scene/effect/Lighting$LightChangeListener;

.field private specularConstant:Ljavafx/beans/property/DoubleProperty;

.field private specularExponent:Ljavafx/beans/property/DoubleProperty;

.field private surfaceScale:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    .line 82
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Lighting;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 100
    move-object v3, v1

    new-instance v4, Ljavafx/scene/effect/Light$Distant;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljavafx/scene/effect/Light$Distant;-><init>()V

    iput-object v4, v3, Ljavafx/scene/effect/Lighting;->defaultLight:Ljavafx/scene/effect/Light;

    .line 105
    move-object v3, v1

    new-instance v4, Ljavafx/scene/effect/Lighting$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    new-instance v7, Ljavafx/scene/effect/Light$Distant;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljavafx/scene/effect/Light$Distant;-><init>()V

    invoke-direct {v5, v6, v7}, Ljavafx/scene/effect/Lighting$1;-><init>(Ljavafx/scene/effect/Lighting;Ljavafx/scene/effect/Light;)V

    iput-object v4, v3, Ljavafx/scene/effect/Lighting;->light:Ljavafx/beans/property/ObjectProperty;

    .line 136
    move-object v3, v1

    new-instance v4, Ljavafx/scene/effect/Lighting$LightChangeListener;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/scene/effect/Lighting$LightChangeListener;-><init>(Ljavafx/scene/effect/Lighting;Ljavafx/scene/effect/Lighting$1;)V

    iput-object v4, v3, Ljavafx/scene/effect/Lighting;->lightChangeListener:Ljavafx/scene/effect/Lighting$LightChangeListener;

    .line 83
    new-instance v3, Ljavafx/scene/effect/Shadow;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljavafx/scene/effect/Shadow;-><init>()V

    move-object v2, v3

    .line 84
    .local v2, "shadow":Ljavafx/scene/effect/Shadow;
    move-object v3, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Shadow;->setRadius(D)V

    .line 85
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Lighting;->setBumpInput(Ljavafx/scene/effect/Effect;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/effect/Light;)V
    .locals 10

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, p1

    .local v1, "light":Ljavafx/scene/effect/Light;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 100
    move-object v3, v0

    new-instance v4, Ljavafx/scene/effect/Light$Distant;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljavafx/scene/effect/Light$Distant;-><init>()V

    iput-object v4, v3, Ljavafx/scene/effect/Lighting;->defaultLight:Ljavafx/scene/effect/Light;

    .line 105
    move-object v3, v0

    new-instance v4, Ljavafx/scene/effect/Lighting$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    new-instance v7, Ljavafx/scene/effect/Light$Distant;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljavafx/scene/effect/Light$Distant;-><init>()V

    invoke-direct {v5, v6, v7}, Ljavafx/scene/effect/Lighting$1;-><init>(Ljavafx/scene/effect/Lighting;Ljavafx/scene/effect/Light;)V

    iput-object v4, v3, Ljavafx/scene/effect/Lighting;->light:Ljavafx/beans/property/ObjectProperty;

    .line 136
    move-object v3, v0

    new-instance v4, Ljavafx/scene/effect/Lighting$LightChangeListener;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/scene/effect/Lighting$LightChangeListener;-><init>(Ljavafx/scene/effect/Lighting;Ljavafx/scene/effect/Lighting$1;)V

    iput-object v4, v3, Ljavafx/scene/effect/Lighting;->lightChangeListener:Ljavafx/scene/effect/Lighting$LightChangeListener;

    .line 94
    new-instance v3, Ljavafx/scene/effect/Shadow;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljavafx/scene/effect/Shadow;-><init>()V

    move-object v2, v3

    .line 95
    .local v2, "shadow":Ljavafx/scene/effect/Shadow;
    move-object v3, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Shadow;->setRadius(D)V

    .line 96
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Lighting;->setBumpInput(Ljavafx/scene/effect/Effect;)V

    .line 97
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Lighting;->setLight(Ljavafx/scene/effect/Light;)V

    .line 98
    return-void
.end method

.method private getLightInternal()Ljavafx/scene/effect/Light;
    .locals 3

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Lighting;->getLight()Ljavafx/scene/effect/Light;

    move-result-object v2

    move-object v1, v2

    .line 414
    .local v1, "localLight":Ljavafx/scene/effect/Light;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->defaultLight:Ljavafx/scene/effect/Light;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/Lighting;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Lighting;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public final bumpInputProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting;->bumpInput:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 192
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "bumpInput"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/Lighting;->bumpInput:Ljavafx/beans/property/ObjectProperty;

    .line 194
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting;->bumpInput:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting;
    return-object v0
.end method

.method public final contentInputProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting;->contentInput:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 217
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "contentInput"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/Lighting;->contentInput:Ljavafx/beans/property/ObjectProperty;

    .line 219
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting;->contentInput:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting;
    return-object v0
.end method

.method public final diffuseConstantProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 258
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Lighting;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->diffuseConstant:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 259
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Lighting$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Lighting$2;-><init>(Ljavafx/scene/effect/Lighting;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Lighting;->diffuseConstant:Ljavafx/beans/property/DoubleProperty;

    .line 277
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->diffuseConstant:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Lighting;
    return-object v1
.end method

.method public final getBumpInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting;->bumpInput:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Lighting;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting;->bumpInput:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getContentInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting;->contentInput:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Lighting;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting;->contentInput:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getDiffuseConstant()D
    .locals 4

    .prologue
    .line 254
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Lighting;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->diffuseConstant:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Lighting;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Lighting;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->diffuseConstant:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getLight()Ljavafx/scene/effect/Light;
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting;->light:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Light;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting;
    return-object v0
.end method

.method public final getSpecularConstant()D
    .locals 4

    .prologue
    .line 298
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Lighting;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->specularConstant:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Lighting;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Lighting;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->specularConstant:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getSpecularExponent()D
    .locals 4

    .prologue
    .line 342
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Lighting;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->specularExponent:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Lighting;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Lighting;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->specularExponent:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getSurfaceScale()D
    .locals 4

    .prologue
    .line 386
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Lighting;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->surfaceScale:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Lighting;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Lighting;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->surfaceScale:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 6

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/Lighting;->getBumpInput()Ljavafx/scene/effect/Effect;

    move-result-object v4

    move-object v2, v4

    .line 225
    .local v2, "localBumpInput":Ljavafx/scene/effect/Effect;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/Lighting;->getContentInput()Ljavafx/scene/effect/Effect;

    move-result-object v4

    move-object v3, v4

    .line 226
    .local v3, "localContentInput":Ljavafx/scene/effect/Effect;
    move-object v4, v3

    move-object v5, v1

    if-eq v4, v5, :cond_0

    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 227
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 233
    .end local v0    # "this":Ljavafx/scene/effect/Lighting;
    :goto_0
    return v0

    .line 228
    .restart local v0    # "this":Ljavafx/scene/effect/Lighting;
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 230
    :cond_2
    move-object v4, v2

    if-eqz v4, :cond_3

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 233
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Lighting;
    new-instance v3, Ljavafx/scene/effect/Lighting;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/effect/Lighting;->getLight()Ljavafx/scene/effect/Light;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavafx/scene/effect/Lighting;-><init>(Ljavafx/scene/effect/Light;)V

    move-object v2, v3

    .line 146
    .local v2, "lighting":Ljavafx/scene/effect/Lighting;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Lighting;->getBumpInput()Ljavafx/scene/effect/Effect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Lighting;->setBumpInput(Ljavafx/scene/effect/Effect;)V

    .line 147
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Lighting;->getContentInput()Ljavafx/scene/effect/Effect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Lighting;->setContentInput(Ljavafx/scene/effect/Effect;)V

    .line 148
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Lighting;->getDiffuseConstant()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Lighting;->setDiffuseConstant(D)V

    .line 149
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Lighting;->getSpecularConstant()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Lighting;->setSpecularConstant(D)V

    .line 150
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Lighting;->getSpecularExponent()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Lighting;->setSpecularExponent(D)V

    .line 151
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Lighting;->getSurfaceScale()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/effect/Lighting;->setSurfaceScale(D)V

    .line 152
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/effect/Lighting;
    return-object v1
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Lighting;->impl_createImpl()Lcom/sun/scenario/effect/PhongLighting;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/PhongLighting;
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    new-instance v1, Lcom/sun/scenario/effect/PhongLighting;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/effect/Lighting;->getLightInternal()Ljavafx/scene/effect/Light;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/effect/Light;->impl_getImpl()Lcom/sun/scenario/effect/light/Light;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/PhongLighting;-><init>(Lcom/sun/scenario/effect/light/Light;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/effect/Lighting;->getContentInput()Ljavafx/scene/effect/Effect;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/scene/effect/Lighting;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/effect/Lighting;
    return-object v0
.end method

.method impl_update()V
    .locals 12

    .prologue
    .line 419
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Lighting;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/effect/Lighting;->getBumpInput()Ljavafx/scene/effect/Effect;

    move-result-object v5

    move-object v2, v5

    .line 421
    .local v2, "localBumpInput":Ljavafx/scene/effect/Effect;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 422
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 425
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/effect/Lighting;->getContentInput()Ljavafx/scene/effect/Effect;

    move-result-object v5

    move-object v3, v5

    .line 426
    .local v3, "localContentInput":Ljavafx/scene/effect/Effect;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 427
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 430
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/effect/Lighting;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    check-cast v5, Lcom/sun/scenario/effect/PhongLighting;

    move-object v4, v5

    .line 431
    .local v4, "peer":Lcom/sun/scenario/effect/PhongLighting;
    move-object v5, v4

    move-object v6, v2

    if-nez v6, :cond_2

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/PhongLighting;->setBumpInput(Lcom/sun/scenario/effect/Effect;)V

    .line 432
    move-object v5, v4

    move-object v6, v3

    if-nez v6, :cond_3

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/PhongLighting;->setContentInput(Lcom/sun/scenario/effect/Effect;)V

    .line 433
    move-object v5, v4

    const-wide/16 v6, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/effect/Lighting;->getDiffuseConstant()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/PhongLighting;->setDiffuseConstant(F)V

    .line 434
    move-object v5, v4

    const-wide/16 v6, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/effect/Lighting;->getSpecularConstant()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/PhongLighting;->setSpecularConstant(F)V

    .line 435
    move-object v5, v4

    const-wide/16 v6, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/effect/Lighting;->getSpecularExponent()D

    move-result-wide v8

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/PhongLighting;->setSpecularExponent(F)V

    .line 436
    move-object v5, v4

    const-wide/16 v6, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/effect/Lighting;->getSurfaceScale()D

    move-result-wide v8

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/PhongLighting;->setSurfaceScale(F)V

    .line 439
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/effect/Lighting;->lightChangeListener:Ljavafx/scene/effect/Lighting$LightChangeListener;

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/Lighting;->getLight()Ljavafx/scene/effect/Light;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/effect/Lighting$LightChangeListener;->register(Ljavafx/scene/effect/Light;)V

    .line 441
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/effect/Lighting;->getLightInternal()Ljavafx/scene/effect/Light;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/effect/Light;->impl_sync()V

    .line 442
    move-object v5, v4

    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/effect/Lighting;->getLightInternal()Ljavafx/scene/effect/Light;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/effect/Light;->impl_getImpl()Lcom/sun/scenario/effect/light/Light;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/PhongLighting;->setLight(Lcom/sun/scenario/effect/light/Light;)V

    .line 443
    return-void

    .line 431
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    goto :goto_0

    .line 432
    :cond_3
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    goto :goto_1
.end method

.method public final lightProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Light;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Lighting;->light:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Lighting;
    return-object v0
.end method

.method public final setBumpInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Lighting;->bumpInputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public final setContentInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Lighting;->contentInputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public final setDiffuseConstant(D)V
    .locals 7

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Lighting;->diffuseConstantProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 251
    return-void
.end method

.method public final setLight(Ljavafx/scene/effect/Light;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Light;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Lighting;->lightProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public final setSpecularConstant(D)V
    .locals 7

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Lighting;->specularConstantProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 295
    return-void
.end method

.method public final setSpecularExponent(D)V
    .locals 7

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Lighting;->specularExponentProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 339
    return-void
.end method

.method public final setSurfaceScale(D)V
    .locals 7

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Lighting;->surfaceScaleProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 383
    return-void
.end method

.method public final specularConstantProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 302
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Lighting;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->specularConstant:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 303
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Lighting$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x3fd3333333333333L    # 0.3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Lighting$3;-><init>(Ljavafx/scene/effect/Lighting;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Lighting;->specularConstant:Ljavafx/beans/property/DoubleProperty;

    .line 321
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->specularConstant:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Lighting;
    return-object v1
.end method

.method public final specularExponentProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 346
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Lighting;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->specularExponent:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 347
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Lighting$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Lighting$4;-><init>(Ljavafx/scene/effect/Lighting;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Lighting;->specularExponent:Ljavafx/beans/property/DoubleProperty;

    .line 365
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->specularExponent:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Lighting;
    return-object v1
.end method

.method public final surfaceScaleProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 390
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Lighting;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->surfaceScale:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 391
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Lighting$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Lighting$5;-><init>(Ljavafx/scene/effect/Lighting;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Lighting;->surfaceScale:Ljavafx/beans/property/DoubleProperty;

    .line 409
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Lighting;->surfaceScale:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Lighting;
    return-object v1
.end method

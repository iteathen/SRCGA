.class Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;
.super Ljavafx/scene/effect/EffectChangeListener;
.source "DisplacementMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/effect/DisplacementMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapDataChangeListener"
.end annotation


# instance fields
.field mapData:Ljavafx/scene/effect/FloatMap;

.field final synthetic this$0:Ljavafx/scene/effect/DisplacementMap;


# direct methods
.method private constructor <init>(Ljavafx/scene/effect/DisplacementMap;)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;->this$0:Ljavafx/scene/effect/DisplacementMap;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/effect/EffectChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/effect/DisplacementMap;Ljavafx/scene/effect/DisplacementMap$1;)V
    .locals 5

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/effect/DisplacementMap;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/effect/DisplacementMap$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;-><init>(Ljavafx/scene/effect/DisplacementMap;)V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;->mapData:Ljavafx/scene/effect/FloatMap;

    invoke-virtual {v2}, Ljavafx/scene/effect/FloatMap;->impl_isEffectDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;->this$0:Ljavafx/scene/effect/DisplacementMap;

    sget-object v3, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/DisplacementMap;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 241
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;->this$0:Ljavafx/scene/effect/DisplacementMap;

    invoke-virtual {v2}, Ljavafx/scene/effect/DisplacementMap;->effectBoundsChanged()V

    .line 243
    :cond_0
    return-void
.end method

.method public register(Ljavafx/scene/effect/FloatMap;)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/FloatMap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;->mapData:Ljavafx/scene/effect/FloatMap;

    .line 234
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;->mapData:Ljavafx/scene/effect/FloatMap;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-super {v2, v3}, Ljavafx/scene/effect/EffectChangeListener;->register(Ljavafx/beans/value/ObservableValue;)V

    .line 235
    return-void

    .line 234
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/DisplacementMap$MapDataChangeListener;->mapData:Ljavafx/scene/effect/FloatMap;

    invoke-virtual {v3}, Ljavafx/scene/effect/FloatMap;->effectDirtyProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    goto :goto_0
.end method

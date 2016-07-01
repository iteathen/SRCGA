.class Ljavafx/scene/effect/Lighting$LightChangeListener;
.super Ljavafx/scene/effect/EffectChangeListener;
.source "Lighting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/effect/Lighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightChangeListener"
.end annotation


# instance fields
.field light:Ljavafx/scene/effect/Light;

.field final synthetic this$0:Ljavafx/scene/effect/Lighting;


# direct methods
.method private constructor <init>(Ljavafx/scene/effect/Lighting;)V
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$LightChangeListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/Lighting$LightChangeListener;->this$0:Ljavafx/scene/effect/Lighting;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/effect/EffectChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/effect/Lighting;Ljavafx/scene/effect/Lighting$1;)V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$LightChangeListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/effect/Lighting;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/effect/Lighting$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/effect/Lighting$LightChangeListener;-><init>(Ljavafx/scene/effect/Lighting;)V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$LightChangeListener;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/Lighting$LightChangeListener;->light:Ljavafx/scene/effect/Light;

    invoke-virtual {v2}, Ljavafx/scene/effect/Light;->impl_isEffectDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/Lighting$LightChangeListener;->this$0:Ljavafx/scene/effect/Lighting;

    sget-object v3, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/Lighting;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 166
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/Lighting$LightChangeListener;->this$0:Ljavafx/scene/effect/Lighting;

    invoke-virtual {v2}, Ljavafx/scene/effect/Lighting;->effectBoundsChanged()V

    .line 168
    :cond_0
    return-void
.end method

.method public register(Ljavafx/scene/effect/Light;)V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Lighting$LightChangeListener;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Light;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/Lighting$LightChangeListener;->light:Ljavafx/scene/effect/Light;

    .line 159
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/Lighting$LightChangeListener;->light:Ljavafx/scene/effect/Light;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-super {v2, v3}, Ljavafx/scene/effect/EffectChangeListener;->register(Ljavafx/beans/value/ObservableValue;)V

    .line 160
    return-void

    .line 159
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/Lighting$LightChangeListener;->light:Ljavafx/scene/effect/Light;

    invoke-virtual {v3}, Ljavafx/scene/effect/Light;->effectDirtyProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    goto :goto_0
.end method

.class Ljavafx/scene/effect/Effect$EffectInputChangeListener;
.super Ljavafx/scene/effect/EffectChangeListener;
.source "Effect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/effect/Effect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EffectInputChangeListener"
.end annotation


# instance fields
.field private oldBits:I

.field final synthetic this$0:Ljavafx/scene/effect/Effect;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect$EffectInputChangeListener;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/Effect$EffectInputChangeListener;->this$0:Ljavafx/scene/effect/Effect;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/effect/EffectChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect$EffectInputChangeListener;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v4, v1

    check-cast v4, Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v4}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v4

    move v2, v4

    .line 179
    .local v2, "newBits":I
    move v4, v2

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/effect/Effect$EffectInputChangeListener;->oldBits:I

    xor-int/2addr v4, v5

    move v3, v4

    .line 180
    .local v3, "dirtyBits":I
    move-object v4, v0

    move v5, v2

    iput v5, v4, Ljavafx/scene/effect/Effect$EffectInputChangeListener;->oldBits:I

    .line 181
    move v4, v3

    sget-object v5, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-static {v4, v5}, Lcom/sun/javafx/effect/EffectDirtyBits;->isSet(ILcom/sun/javafx/effect/EffectDirtyBits;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    sget-object v5, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    .line 182
    invoke-static {v4, v5}, Lcom/sun/javafx/effect/EffectDirtyBits;->isSet(ILcom/sun/javafx/effect/EffectDirtyBits;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/Effect$EffectInputChangeListener;->this$0:Ljavafx/scene/effect/Effect;

    sget-object v5, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/effect/Effect;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 185
    :cond_0
    move v4, v3

    sget-object v5, Lcom/sun/javafx/effect/EffectDirtyBits;->BOUNDS_CHANGED:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-static {v4, v5}, Lcom/sun/javafx/effect/EffectDirtyBits;->isSet(ILcom/sun/javafx/effect/EffectDirtyBits;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/Effect$EffectInputChangeListener;->this$0:Ljavafx/scene/effect/Effect;

    sget-object v5, Lcom/sun/javafx/effect/EffectDirtyBits;->BOUNDS_CHANGED:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-static {v4, v5}, Ljavafx/scene/effect/Effect;->access$000(Ljavafx/scene/effect/Effect;Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 188
    :cond_1
    return-void
.end method

.method public register(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect$EffectInputChangeListener;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-super {v2, v3}, Ljavafx/scene/effect/EffectChangeListener;->register(Ljavafx/beans/value/ObservableValue;)V

    .line 171
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 172
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_effectDirtyProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v3

    iput v3, v2, Ljavafx/scene/effect/Effect$EffectInputChangeListener;->oldBits:I

    .line 174
    :cond_0
    return-void

    .line 170
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_effectDirtyProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v3

    goto :goto_0
.end method

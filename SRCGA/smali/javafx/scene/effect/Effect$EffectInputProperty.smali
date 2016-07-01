.class Ljavafx/scene/effect/Effect$EffectInputProperty;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Effect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/effect/Effect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EffectInputProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/effect/Effect;",
        ">;"
    }
.end annotation


# instance fields
.field private final effectChangeListener:Ljavafx/scene/effect/Effect$EffectInputChangeListener;

.field private final propertyName:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/scene/effect/Effect;

.field private validInput:Ljavafx/scene/effect/Effect;


# direct methods
.method public constructor <init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect$EffectInputProperty;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/Effect;
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/effect/Effect$EffectInputProperty;->this$0:Ljavafx/scene/effect/Effect;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 194
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/effect/Effect$EffectInputProperty;->validInput:Ljavafx/scene/effect/Effect;

    .line 196
    move-object v3, v0

    new-instance v4, Ljavafx/scene/effect/Effect$EffectInputChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/effect/Effect$EffectInputProperty;->this$0:Ljavafx/scene/effect/Effect;

    invoke-direct {v5, v6}, Ljavafx/scene/effect/Effect$EffectInputChangeListener;-><init>(Ljavafx/scene/effect/Effect;)V

    iput-object v4, v3, Ljavafx/scene/effect/Effect$EffectInputProperty;->effectChangeListener:Ljavafx/scene/effect/Effect$EffectInputChangeListener;

    .line 200
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/effect/Effect$EffectInputProperty;->propertyName:Ljava/lang/String;

    .line 201
    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect$EffectInputProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Effect$EffectInputProperty;->this$0:Ljavafx/scene/effect/Effect;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Effect$EffectInputProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect$EffectInputProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Effect$EffectInputProperty;->propertyName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Effect$EffectInputProperty;
    return-object v0
.end method

.method public invalidated()V
    .locals 6

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Effect$EffectInputProperty;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/beans/property/ObjectPropertyBase;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/effect/Effect;

    move-object v1, v2

    .line 206
    .local v1, "newInput":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/Effect$EffectInputProperty;->this$0:Ljavafx/scene/effect/Effect;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/Effect;->impl_containsCycles(Ljavafx/scene/effect/Effect;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Effect$EffectInputProperty;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Effect$EffectInputProperty;->unbind()V

    .line 209
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/Effect$EffectInputProperty;->validInput:Ljavafx/scene/effect/Effect;

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/Effect$EffectInputProperty;->set(Ljava/lang/Object;)V

    .line 210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cycle in effect chain detected, binding was set to incorrect value, unbinding the input property"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/Effect$EffectInputProperty;->validInput:Ljavafx/scene/effect/Effect;

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/Effect$EffectInputProperty;->set(Ljava/lang/Object;)V

    .line 215
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cycle in effect chain detected"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/Effect$EffectInputProperty;->validInput:Ljavafx/scene/effect/Effect;

    .line 219
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/Effect$EffectInputProperty;->effectChangeListener:Ljavafx/scene/effect/Effect$EffectInputChangeListener;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/Effect$EffectInputChangeListener;->register(Ljavafx/scene/effect/Effect;)V

    .line 220
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/Effect$EffectInputProperty;->this$0:Ljavafx/scene/effect/Effect;

    sget-object v3, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/Effect;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 227
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/Effect$EffectInputProperty;->this$0:Ljavafx/scene/effect/Effect;

    invoke-virtual {v2}, Ljavafx/scene/effect/Effect;->effectBoundsChanged()V

    .line 228
    return-void
.end method

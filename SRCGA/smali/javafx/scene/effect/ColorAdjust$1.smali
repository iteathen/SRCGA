.class Ljavafx/scene/effect/ColorAdjust$1;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "ColorAdjust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/ColorAdjust;->hueProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/ColorAdjust;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/ColorAdjust;)V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/ColorAdjust;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/ColorAdjust$1;->this$0:Ljavafx/scene/effect/ColorAdjust;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust$1;->this$0:Ljavafx/scene/effect/ColorAdjust;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust$1;
    const-string v1, "hue"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ColorAdjust$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ColorAdjust$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust$1;->this$0:Ljavafx/scene/effect/ColorAdjust;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/ColorAdjust;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 161
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ColorAdjust$1;->this$0:Ljavafx/scene/effect/ColorAdjust;

    invoke-virtual {v1}, Ljavafx/scene/effect/ColorAdjust;->effectBoundsChanged()V

    .line 162
    return-void
.end method

.class Ljavafx/scene/effect/PerspectiveTransform$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "PerspectiveTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/PerspectiveTransform;->ulyProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/PerspectiveTransform;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/PerspectiveTransform;)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/PerspectiveTransform$2;->this$0:Ljavafx/scene/effect/PerspectiveTransform;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/DoublePropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform$2;->this$0:Ljavafx/scene/effect/PerspectiveTransform;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform$2;
    const-string v1, "uly"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform$2;->this$0:Ljavafx/scene/effect/PerspectiveTransform;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/PerspectiveTransform;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 234
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform$2;->this$0:Ljavafx/scene/effect/PerspectiveTransform;

    invoke-virtual {v1}, Ljavafx/scene/effect/PerspectiveTransform;->effectBoundsChanged()V

    .line 235
    return-void
.end method

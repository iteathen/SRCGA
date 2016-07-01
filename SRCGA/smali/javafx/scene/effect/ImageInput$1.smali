.class Ljavafx/scene/effect/ImageInput$1;
.super Lcom/sun/javafx/beans/event/AbstractNotifyListener;
.source "ImageInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/effect/ImageInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/ImageInput;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/ImageInput;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/ImageInput;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/ImageInput$1;->this$0:Ljavafx/scene/effect/ImageInput;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput$1;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/ImageInput$1;->this$0:Ljavafx/scene/effect/ImageInput;

    sget-object v3, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/ImageInput;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 101
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/ImageInput$1;->this$0:Ljavafx/scene/effect/ImageInput;

    invoke-virtual {v2}, Ljavafx/scene/effect/ImageInput;->effectBoundsChanged()V

    .line 102
    return-void
.end method

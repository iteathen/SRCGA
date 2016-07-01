.class Ljavafx/scene/effect/ImageInput$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "ImageInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/ImageInput;->sourceProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/image/Image;",
        ">;"
    }
.end annotation


# instance fields
.field private needsListeners:Z

.field final synthetic this$0:Ljavafx/scene/effect/ImageInput;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/ImageInput;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/ImageInput;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/ImageInput$2;->this$0:Ljavafx/scene/effect/ImageInput;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 109
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/effect/ImageInput$2;->needsListeners:Z

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/ImageInput$2;->this$0:Ljavafx/scene/effect/ImageInput;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ImageInput$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput$2;
    const-string v1, "source"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/ImageInput$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 8

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/ImageInput$2;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/ImageInput$2;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/image/Image;

    move-object v1, v3

    .line 115
    .local v1, "_image":Ljavafx/scene/image/Image;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v3

    move-object v2, v3

    .line 117
    .local v2, "accessor":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/effect/ImageInput$2;->needsListeners:Z

    if-eqz v3, :cond_0

    .line 118
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/ImageInput$2;->this$0:Ljavafx/scene/effect/ImageInput;

    invoke-static {v4}, Ljavafx/scene/effect/ImageInput;->access$100(Ljavafx/scene/effect/ImageInput;)Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/ImageInput$2;->this$0:Ljavafx/scene/effect/ImageInput;

    .line 119
    invoke-static {v4}, Ljavafx/scene/effect/ImageInput;->access$000(Ljavafx/scene/effect/ImageInput;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->getWeakListener()Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 122
    :cond_0
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_3

    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->isAnimation(Ljavafx/scene/image/Image;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    .line 123
    invoke-virtual {v4}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Ljavafx/scene/effect/ImageInput$2;->needsListeners:Z

    .line 124
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/ImageInput$2;->this$0:Ljavafx/scene/effect/ImageInput;

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/scene/effect/ImageInput;->access$102(Ljavafx/scene/effect/ImageInput;Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image;

    move-result-object v3

    .line 126
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/effect/ImageInput$2;->needsListeners:Z

    if-eqz v3, :cond_2

    .line 127
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/effect/ImageInput$2;->this$0:Ljavafx/scene/effect/ImageInput;

    .line 128
    invoke-static {v4}, Ljavafx/scene/effect/ImageInput;->access$000(Ljavafx/scene/effect/ImageInput;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->getWeakListener()Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 130
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/ImageInput$2;->this$0:Ljavafx/scene/effect/ImageInput;

    sget-object v4, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/ImageInput;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 131
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/ImageInput$2;->this$0:Ljavafx/scene/effect/ImageInput;

    invoke-virtual {v3}, Ljavafx/scene/effect/ImageInput;->effectBoundsChanged()V

    .line 132
    return-void

    .line 123
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

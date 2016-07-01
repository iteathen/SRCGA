.class Ljavafx/scene/Node$MiscProperties$9$1;
.super Lcom/sun/javafx/beans/event/AbstractNotifyListener;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node$MiscProperties$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ljavafx/scene/Node$MiscProperties$9;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$MiscProperties$9;)V
    .locals 4

    .prologue
    .line 6740
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$9$1;
    move-object v1, p1

    .local v1, "this$2":Ljavafx/scene/Node$MiscProperties$9;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$MiscProperties$9$1;->this$2:Ljavafx/scene/Node$MiscProperties$9;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 6744
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$9$1;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v4, v1

    check-cast v4, Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v4}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v4

    move v2, v4

    .line 6745
    .local v2, "newBits":I
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Node$MiscProperties$9$1;->this$2:Ljavafx/scene/Node$MiscProperties$9;

    invoke-static {v5}, Ljavafx/scene/Node$MiscProperties$9;->access$4000(Ljavafx/scene/Node$MiscProperties$9;)I

    move-result v5

    xor-int/2addr v4, v5

    move v3, v4

    .line 6746
    .local v3, "changedBits":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$9$1;->this$2:Ljavafx/scene/Node$MiscProperties$9;

    move v5, v2

    invoke-static {v4, v5}, Ljavafx/scene/Node$MiscProperties$9;->access$4002(Ljavafx/scene/Node$MiscProperties$9;I)I

    move-result v4

    .line 6747
    move v4, v3

    sget-object v5, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-static {v4, v5}, Lcom/sun/javafx/effect/EffectDirtyBits;->isSet(ILcom/sun/javafx/effect/EffectDirtyBits;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    sget-object v5, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    .line 6750
    invoke-static {v4, v5}, Lcom/sun/javafx/effect/EffectDirtyBits;->isSet(ILcom/sun/javafx/effect/EffectDirtyBits;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6753
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$9$1;->this$2:Ljavafx/scene/Node$MiscProperties$9;

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$9;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->EFFECT_EFFECT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 6755
    :cond_0
    move v4, v3

    sget-object v5, Lcom/sun/javafx/effect/EffectDirtyBits;->BOUNDS_CHANGED:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-static {v4, v5}, Lcom/sun/javafx/effect/EffectDirtyBits;->isSet(ILcom/sun/javafx/effect/EffectDirtyBits;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6758
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$9$1;->this$2:Ljavafx/scene/Node$MiscProperties$9;

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$9;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v4}, Ljavafx/scene/Node;->localBoundsChanged()V

    .line 6760
    :cond_1
    return-void
.end method

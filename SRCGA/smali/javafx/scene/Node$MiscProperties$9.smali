.class Ljavafx/scene/Node$MiscProperties$9;
.super Ljavafx/css/StyleableObjectProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$MiscProperties;->effectProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/effect/Effect;",
        ">;"
    }
.end annotation


# instance fields
.field private final effectChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

.field private oldBits:I

.field private oldEffect:Ljavafx/scene/effect/Effect;

.field final synthetic this$1:Ljavafx/scene/Node$MiscProperties;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$MiscProperties;Ljavafx/scene/effect/Effect;)V
    .locals 8

    .prologue
    .line 6735
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$9;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$MiscProperties;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$MiscProperties$9;->this$1:Ljavafx/scene/Node$MiscProperties;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    .line 6736
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Node$MiscProperties$9;->oldEffect:Ljavafx/scene/effect/Effect;

    .line 6739
    move-object v3, v0

    new-instance v4, Ljavafx/scene/Node$MiscProperties$9$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/Node$MiscProperties$9$1;-><init>(Ljavafx/scene/Node$MiscProperties$9;)V

    iput-object v4, v3, Ljavafx/scene/Node$MiscProperties$9;->effectChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    return-void
.end method

.method static synthetic access$4000(Ljavafx/scene/Node$MiscProperties$9;)I
    .locals 2

    .prologue
    .line 6735
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$MiscProperties$9;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Node$MiscProperties$9;->oldBits:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$MiscProperties$9;
    return v0
.end method

.method static synthetic access$4002(Ljavafx/scene/Node$MiscProperties$9;I)I
    .locals 7

    .prologue
    .line 6735
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$MiscProperties$9;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/scene/Node$MiscProperties$9;->oldBits:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Node$MiscProperties$9;
    return v0
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6794
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties$9;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$9;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 6789
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$9;
    # getter for: Ljavafx/scene/Node$StyleableProperties;->EFFECT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/Node$StyleableProperties;->access$4100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$9;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6799
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$9;
    const-string v1, "effect"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$9;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 6765
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$9;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node$MiscProperties$9;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/effect/Effect;

    move-object v1, v2

    .line 6766
    .local v1, "_effect":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties$9;->oldEffect:Ljavafx/scene/effect/Effect;

    if-eqz v2, :cond_0

    .line 6767
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties$9;->oldEffect:Ljavafx/scene/effect/Effect;

    invoke-virtual {v2}, Ljavafx/scene/effect/Effect;->impl_effectDirtyProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties$9;->effectChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    .line 6768
    invoke-virtual {v3}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->getWeakListener()Ljavafx/beans/InvalidationListener;

    move-result-object v3

    .line 6767
    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 6770
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$MiscProperties$9;->oldEffect:Ljavafx/scene/effect/Effect;

    .line 6771
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 6772
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/effect/Effect;->impl_effectDirtyProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties$9;->effectChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    .line 6774
    invoke-virtual {v3}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;->getWeakListener()Ljavafx/beans/InvalidationListener;

    move-result-object v3

    .line 6773
    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 6775
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/effect/Effect;->impl_isEffectDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6776
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties$9;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->EFFECT_EFFECT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 6778
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_effectDirtyProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v3

    iput v3, v2, Ljavafx/scene/Node$MiscProperties$9;->oldBits:I

    .line 6781
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties$9;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_EFFECT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 6784
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties$9;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v2, v2, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->localBoundsChanged()V

    .line 6785
    return-void
.end method

.class public abstract Ljavafx/scene/effect/Light;
.super Ljava/lang/Object;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/effect/Light$Spot;,
        Ljavafx/scene/effect/Light$Point;,
        Ljavafx/scene/effect/Light$Distant;
    }
.end annotation


# instance fields
.field private color:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field

.field private effectDirty:Ljavafx/beans/property/BooleanProperty;

.field private peer:Lcom/sun/scenario/effect/light/Light;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Light;->impl_markDirty()V

    .line 50
    return-void
.end method

.method private getColorInternal()Ljavafx/scene/paint/Color;
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Light;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    move-object v1, v2

    .line 113
    .local v1, "c":Ljavafx/scene/paint/Color;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/Light;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Light;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private setEffectDirty(Z)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Light;->effectDirtyProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 124
    return-void
.end method


# virtual methods
.method public final colorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light;->color:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 83
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Light$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Light$1;-><init>(Ljavafx/scene/effect/Light;Ljavafx/scene/paint/Color;)V

    iput-object v2, v1, Ljavafx/scene/effect/Light;->color:Ljavafx/beans/property/ObjectProperty;

    .line 101
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light;->color:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light;
    return-object v0
.end method

.method final effectDirtyProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light;->effectDirty:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 128
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "effectDirty"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/Light;->effectDirty:Ljavafx/beans/property/BooleanProperty;

    .line 130
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light;->effectDirty:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light;
    return-object v0
.end method

.method public final getColor()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light;->color:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Light;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light;->color:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    goto :goto_0
.end method

.method final impl_clearDirty()V
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/effect/Light;->setEffectDirty(Z)V

    .line 143
    return-void
.end method

.method abstract impl_createImpl()Lcom/sun/scenario/effect/light/Light;
.end method

.method impl_getImpl()Lcom/sun/scenario/effect/light/Light;
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light;->peer:Lcom/sun/scenario/effect/light/Light;

    if-nez v1, :cond_0

    .line 57
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Light;->impl_createImpl()Lcom/sun/scenario/effect/light/Light;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/effect/Light;->peer:Lcom/sun/scenario/effect/light/Light;

    .line 59
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light;->peer:Lcom/sun/scenario/effect/light/Light;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light;
    return-object v0
.end method

.method impl_isEffectDirty()Z
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light;->effectDirty:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light;
    return v0

    .restart local v0    # "this":Ljavafx/scene/effect/Light;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light;->effectDirty:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method final impl_markDirty()V
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/effect/Light;->setEffectDirty(Z)V

    .line 139
    return-void
.end method

.method impl_sync()V
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Light;->impl_isEffectDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Light;->impl_update()V

    .line 107
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Light;->impl_clearDirty()V

    .line 109
    :cond_0
    return-void
.end method

.method impl_update()V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Light;->impl_getImpl()Lcom/sun/scenario/effect/light/Light;

    move-result-object v1

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/effect/Light;->getColorInternal()Ljavafx/scene/paint/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->toColor4f(Ljavafx/scene/paint/Color;)Lcom/sun/scenario/effect/Color4f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/scenario/effect/light/Light;->setColor(Lcom/sun/scenario/effect/Color4f;)V

    .line 118
    return-void
.end method

.method public final setColor(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Color;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Light;->colorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.class Ljavafx/scene/effect/Reflection$4;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Reflection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/Reflection;->fractionProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/Reflection;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/Reflection;D)V
    .locals 8

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/Reflection;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/effect/Reflection$4;->this$0:Ljavafx/scene/effect/Reflection;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Reflection$4;->this$0:Ljavafx/scene/effect/Reflection;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Reflection$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection$4;
    const-string v1, "fraction"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Reflection$4;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Reflection$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Reflection$4;->this$0:Ljavafx/scene/effect/Reflection;

    sget-object v2, Lcom/sun/javafx/effect/EffectDirtyBits;->EFFECT_DIRTY:Lcom/sun/javafx/effect/EffectDirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/effect/Reflection;->markDirty(Lcom/sun/javafx/effect/EffectDirtyBits;)V

    .line 297
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Reflection$4;->this$0:Ljavafx/scene/effect/Reflection;

    invoke-virtual {v1}, Ljavafx/scene/effect/Reflection;->effectBoundsChanged()V

    .line 298
    return-void
.end method

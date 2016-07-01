.class Ljavafx/scene/effect/Light$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/effect/Light;->colorProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/paint/Color;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/effect/Light;


# direct methods
.method constructor <init>(Ljavafx/scene/effect/Light;Ljavafx/scene/paint/Color;)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/effect/Light;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/paint/Color;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/effect/Light$1;->this$0:Ljavafx/scene/effect/Light;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$1;->this$0:Ljavafx/scene/effect/Light;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$1;
    const-string v1, "color"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Light$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Light$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Light$1;->this$0:Ljavafx/scene/effect/Light;

    invoke-virtual {v1}, Ljavafx/scene/effect/Light;->impl_markDirty()V

    .line 88
    return-void
.end method

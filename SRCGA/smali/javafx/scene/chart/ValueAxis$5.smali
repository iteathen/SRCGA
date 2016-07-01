.class Ljavafx/scene/chart/ValueAxis$5;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "ValueAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/ValueAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/util/StringConverter",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/ValueAxis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/ValueAxis;Ljavafx/util/StringConverter;)V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$5;, "Ljavafx/scene/chart/ValueAxis$5;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/ValueAxis;
    move-object v2, p2

    .local v2, "x0":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/ValueAxis$5;->this$0:Ljavafx/scene/chart/ValueAxis;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$5;, "Ljavafx/scene/chart/ValueAxis$5;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$5;->this$0:Ljavafx/scene/chart/ValueAxis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$5;, "Ljavafx/scene/chart/ValueAxis$5;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$5;, "Ljavafx/scene/chart/ValueAxis$5;"
    const-string v1, "tickLabelFormatter"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$5;, "Ljavafx/scene/chart/ValueAxis$5;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$5;, "Ljavafx/scene/chart/ValueAxis$5;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$5;->this$0:Ljavafx/scene/chart/ValueAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/ValueAxis;->invalidateRange()V

    .line 172
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$5;->this$0:Ljavafx/scene/chart/ValueAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/ValueAxis;->requestAxisLayout()V

    .line 173
    return-void
.end method

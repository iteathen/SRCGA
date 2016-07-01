.class Ljavafx/scene/chart/Axis$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Axis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Axis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Axis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Axis;)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$2;, "Ljavafx/scene/chart/Axis$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/Axis$2;->this$0:Ljavafx/scene/chart/Axis;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$2;, "Ljavafx/scene/chart/Axis$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$2;->this$0:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$2;, "Ljavafx/scene/chart/Axis$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$2;, "Ljavafx/scene/chart/Axis$2;"
    const-string v1, "label"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$2;, "Ljavafx/scene/chart/Axis$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$2;, "Ljavafx/scene/chart/Axis$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$2;->this$0:Ljavafx/scene/chart/Axis;

    invoke-static {v1}, Ljavafx/scene/chart/Axis;->access$500(Ljavafx/scene/chart/Axis;)Ljavafx/scene/control/Label;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 158
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$2;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 159
    return-void
.end method

.class Ljavafx/scene/chart/Chart$2;
.super Ljavafx/beans/property/StringPropertyBase;
.source "Chart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Chart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Chart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Chart;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Chart;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/Chart$2;->this$0:Ljavafx/scene/chart/Chart;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/StringPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart$2;->this$0:Ljavafx/scene/chart/Chart;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$2;
    const-string v1, "title"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart$2;->this$0:Ljavafx/scene/chart/Chart;

    invoke-static {v1}, Ljavafx/scene/chart/Chart;->access$000(Ljavafx/scene/chart/Chart;)Ljavafx/scene/control/Label;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/Chart$2;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 112
    return-void
.end method

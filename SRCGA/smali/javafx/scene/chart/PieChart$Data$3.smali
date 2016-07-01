.class Ljavafx/scene/chart/PieChart$Data$3;
.super Ljavafx/beans/binding/StringBinding;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/chart/PieChart$Data;-><init>(Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/PieChart$Data;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/PieChart$Data;)V
    .locals 8

    .prologue
    .line 992
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/PieChart$Data;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/PieChart$Data$3;->this$0:Ljavafx/scene/chart/PieChart$Data;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 993
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/PieChart$Data$3;->this$0:Ljavafx/scene/chart/PieChart$Data;

    invoke-virtual {v6}, Ljavafx/scene/chart/PieChart$Data;->nameProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/chart/PieChart$Data$3;->this$0:Ljavafx/scene/chart/PieChart$Data;

    invoke-static {v6}, Ljavafx/scene/chart/PieChart$Data;->access$700(Ljavafx/scene/chart/PieChart$Data;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/PieChart$Data$3;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/PieChart$Data$3;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/PieChart$Data$3;->this$0:Ljavafx/scene/chart/PieChart$Data;

    invoke-virtual {v2}, Ljavafx/scene/chart/PieChart$Data;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " represents "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/PieChart$Data$3;->this$0:Ljavafx/scene/chart/PieChart$Data;

    invoke-static {v2}, Ljavafx/scene/chart/PieChart$Data;->access$800(Ljavafx/scene/chart/PieChart$Data;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " percent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/PieChart$Data$3;
    return-object v0
.end method

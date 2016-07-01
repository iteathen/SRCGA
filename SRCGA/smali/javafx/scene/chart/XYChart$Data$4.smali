.class Ljavafx/scene/chart/XYChart$Data$4;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "XYChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/XYChart$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/XYChart$Data;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/XYChart$Data;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$4;, "Ljavafx/scene/chart/XYChart$Data$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/XYChart$Data;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$Data$4;->this$0:Ljavafx/scene/chart/XYChart$Data;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 7

    .prologue
    .line 1332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/XYChart$Data$4;, "Ljavafx/scene/chart/XYChart$Data$4;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/XYChart$Data$4;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Node;

    move-object v1, v2

    .line 1333
    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1334
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->accessibleTextProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectProperty;->unbind()V

    .line 1335
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->accessibleTextProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    new-instance v3, Ljavafx/scene/chart/XYChart$Data$4$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/chart/XYChart$Data$4$1;-><init>(Ljavafx/scene/chart/XYChart$Data$4;)V

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 1343
    :cond_0
    return-void
.end method

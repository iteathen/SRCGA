.class Ljavafx/scene/control/TableView$7;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "TableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TableView;->columnResizePolicyProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/scene/control/TableView$ResizeFeatures;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private oldPolicy:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/control/TableView$ResizeFeatures;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/TableView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableView;Ljava/lang/Object;Ljava/lang/String;Ljavafx/util/Callback;)V
    .locals 9

    .prologue
    .line 886
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$7;, "Ljavafx/scene/control/TableView$7;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableView;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, p4

    .local v4, "x2":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/control/TableView$ResizeFeatures;Ljava/lang/Boolean;>;"
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/TableView$7;->this$0:Ljavafx/scene/control/TableView;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 11

    .prologue
    .line 890
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TableView$7;, "Ljavafx/scene/control/TableView$7;"
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/TableView$7;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v3}, Ljavafx/scene/control/TableView;->access$1100(Ljavafx/scene/control/TableView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 891
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$7;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/util/Callback;

    new-instance v4, Ljavafx/scene/control/TableView$ResizeFeatures;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/TableView$7;->this$0:Ljavafx/scene/control/TableView;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/control/TableView$ResizeFeatures;-><init>(Ljavafx/scene/control/TableView;Ljavafx/scene/control/TableColumn;Ljava/lang/Double;)V

    invoke-interface {v3, v4}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 893
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/TableView$7;->oldPolicy:Ljavafx/util/Callback;

    if-eqz v3, :cond_0

    .line 894
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/TableView$7;->oldPolicy:Ljavafx/util/Callback;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v3

    move-object v2, v3

    .line 895
    .local v2, "state":Ljavafx/css/PseudoClass;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/TableView$7;->this$0:Ljavafx/scene/control/TableView;

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 897
    .end local v2    # "state":Ljavafx/css/PseudoClass;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$7;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 898
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TableView$7;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/util/Callback;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v3

    move-object v2, v3

    .line 899
    .restart local v2    # "state":Ljavafx/css/PseudoClass;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/TableView$7;->this$0:Ljavafx/scene/control/TableView;

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TableView;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 901
    .end local v2    # "state":Ljavafx/css/PseudoClass;
    :cond_1
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TableView$7;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/util/Callback;

    iput-object v4, v3, Ljavafx/scene/control/TableView$7;->oldPolicy:Ljavafx/util/Callback;

    .line 903
    :cond_2
    return-void
.end method

.class final synthetic Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# instance fields
.field private final arg$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

.field private final arg$2:Ljavafx/scene/control/TreeTableView;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTableView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$4;->arg$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$4;->arg$2:Ljavafx/scene/control/TreeTableView;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/InvalidationListener;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$4;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTableView;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/InvalidationListener;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$4;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTableView;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$4;->arg$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$$Lambda$4;->arg$2:Ljavafx/scene/control/TreeTableView;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$lambda$3(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;Ljavafx/scene/control/TreeTableView;Ljavafx/beans/Observable;)V

    return-void
.end method

.class final synthetic Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;

.field private final arg$2:I

.field private final arg$3:Ljavafx/scene/control/TreeTablePosition;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;ILjavafx/scene/control/TreeTablePosition;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;->arg$1:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;->arg$2:I

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;->arg$3:Ljavafx/scene/control/TreeTablePosition;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;ILjavafx/scene/control/TreeTablePosition;)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v3, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;ILjavafx/scene/control/TreeTablePosition;)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;ILjavafx/scene/control/TreeTablePosition;)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    new-instance v3, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;-><init>(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;ILjavafx/scene/control/TreeTablePosition;)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;->arg$1:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;

    move-object v2, v0

    iget v2, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;->arg$2:I

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1$$Lambda$1;->arg$3:Ljavafx/scene/control/TreeTablePosition;

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;->access$lambda$0(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$1;ILjavafx/scene/control/TreeTablePosition;)V

    return-void
.end method

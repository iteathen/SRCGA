.class final synthetic Ljavafx/scene/control/cell/ProgressBarTableCell$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/util/Callback;


# static fields
.field private static final instance:Ljavafx/scene/control/cell/ProgressBarTableCell$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavafx/scene/control/cell/ProgressBarTableCell$$Lambda$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/cell/ProgressBarTableCell$$Lambda$1;-><init>()V

    sput-object v0, Ljavafx/scene/control/cell/ProgressBarTableCell$$Lambda$1;->instance:Ljavafx/scene/control/cell/ProgressBarTableCell$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljavafx/util/Callback;
    .locals 1

    sget-object v0, Ljavafx/scene/control/cell/ProgressBarTableCell$$Lambda$1;->instance:Ljavafx/scene/control/cell/ProgressBarTableCell$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    check-cast v2, Ljavafx/scene/control/TableColumn;

    invoke-static {v2}, Ljavafx/scene/control/cell/ProgressBarTableCell;->access$lambda$0(Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TableCell;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

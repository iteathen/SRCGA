.class final synthetic Ljavafx/scene/control/TableCell$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# instance fields
.field private final arg$1:Ljavafx/scene/control/TableCell;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/TableCell;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableCell$$Lambda$3;->arg$1:Ljavafx/scene/control/TableCell;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/control/TableCell;)Ljavafx/beans/InvalidationListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/control/TableCell$$Lambda$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell$$Lambda$3;-><init>(Ljavafx/scene/control/TableCell;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/control/TableCell;)Ljavafx/beans/InvalidationListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/control/TableCell$$Lambda$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableCell$$Lambda$3;-><init>(Ljavafx/scene/control/TableCell;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableCell$$Lambda$3;->arg$1:Ljavafx/scene/control/TableCell;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/control/TableCell;->access$lambda$2(Ljavafx/scene/control/TableCell;Ljavafx/beans/Observable;)V

    return-void
.end method

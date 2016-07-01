.class final synthetic Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/javafx/collections/MappingChange$Map;


# instance fields
.field private final arg$1:Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$1;->arg$1:Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)Lcom/sun/javafx/collections/MappingChange$Map;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$1;-><init>(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)Lcom/sun/javafx/collections/MappingChange$Map;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$1;-><init>(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$$Lambda$1;->arg$1:Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TablePosition;

    invoke-static {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->access$lambda$0(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;Ljavafx/scene/control/TablePosition;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

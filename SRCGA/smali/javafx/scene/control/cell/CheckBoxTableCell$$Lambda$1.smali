.class final synthetic Ljavafx/scene/control/cell/CheckBoxTableCell$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/util/Callback;


# instance fields
.field private final arg$1:Ljavafx/util/Callback;

.field private final arg$2:Ljavafx/util/StringConverter;


# direct methods
.method private constructor <init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/cell/CheckBoxTableCell$$Lambda$1;->arg$1:Ljavafx/util/Callback;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/control/cell/CheckBoxTableCell$$Lambda$1;->arg$2:Ljavafx/util/StringConverter;

    return-void
.end method

.method private static get$Lambda(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljavafx/scene/control/cell/CheckBoxTableCell$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/cell/CheckBoxTableCell$$Lambda$1;-><init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)Ljavafx/util/Callback;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljavafx/scene/control/cell/CheckBoxTableCell$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/cell/CheckBoxTableCell$$Lambda$1;-><init>(Ljavafx/util/Callback;Ljavafx/util/StringConverter;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/cell/CheckBoxTableCell$$Lambda$1;->arg$1:Ljavafx/util/Callback;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/cell/CheckBoxTableCell$$Lambda$1;->arg$2:Ljavafx/util/StringConverter;

    move-object v4, v1

    check-cast v4, Ljavafx/scene/control/TableColumn;

    invoke-static {v2, v3, v4}, Ljavafx/scene/control/cell/CheckBoxTableCell;->access$lambda$0(Ljavafx/util/Callback;Ljavafx/util/StringConverter;Ljavafx/scene/control/TableColumn;)Ljavafx/scene/control/TableCell;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

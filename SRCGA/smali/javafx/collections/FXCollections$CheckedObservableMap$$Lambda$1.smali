.class final synthetic Ljavafx/collections/FXCollections$CheckedObservableMap$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/collections/MapChangeListener;


# instance fields
.field private final arg$1:Ljavafx/collections/FXCollections$CheckedObservableMap;


# direct methods
.method private constructor <init>(Ljavafx/collections/FXCollections$CheckedObservableMap;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/FXCollections$CheckedObservableMap$$Lambda$1;->arg$1:Ljavafx/collections/FXCollections$CheckedObservableMap;

    return-void
.end method

.method private static get$Lambda(Ljavafx/collections/FXCollections$CheckedObservableMap;)Ljavafx/collections/MapChangeListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/collections/FXCollections$CheckedObservableMap$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableMap$$Lambda$1;-><init>(Ljavafx/collections/FXCollections$CheckedObservableMap;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/collections/FXCollections$CheckedObservableMap;)Ljavafx/collections/MapChangeListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/collections/FXCollections$CheckedObservableMap$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableMap$$Lambda$1;-><init>(Ljavafx/collections/FXCollections$CheckedObservableMap;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap$$Lambda$1;->arg$1:Ljavafx/collections/FXCollections$CheckedObservableMap;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/collections/FXCollections$CheckedObservableMap;->access$lambda$0(Ljavafx/collections/FXCollections$CheckedObservableMap;Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

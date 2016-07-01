.class final synthetic Ljavafx/css/StyleablePropertyFactory$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Ljava/util/function/Function;

.field private final arg$3:Ljavafx/scene/paint/Color;

.field private final arg$4:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;->arg$1:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;->arg$2:Ljava/util/function/Function;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;->arg$3:Ljavafx/scene/paint/Color;

    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;->arg$4:Z

    return-void
.end method

.method private static get$Lambda(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)Ljava/util/function/Function;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v4, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)V

    move-object v0, v4

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)Ljava/util/function/Function;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v4, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;->arg$1:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;->arg$2:Ljava/util/function/Function;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;->arg$3:Ljavafx/scene/paint/Color;

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;->arg$4:Z

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Ljavafx/css/StyleablePropertyFactory;->access$lambda$1(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.class final synthetic Ljavafx/css/StyleablePropertyFactory$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final arg$1:Ljava/util/function/Function;

.field private final arg$2:Z

.field private final arg$3:Z


# direct methods
.method private constructor <init>(Ljava/util/function/Function;ZZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/css/StyleablePropertyFactory$$Lambda$1;->arg$1:Ljava/util/function/Function;

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Ljavafx/css/StyleablePropertyFactory$$Lambda$1;->arg$2:Z

    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Ljavafx/css/StyleablePropertyFactory$$Lambda$1;->arg$3:Z

    return-void
.end method

.method private static get$Lambda(Ljava/util/function/Function;ZZ)Ljava/util/function/Function;
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v3, Ljavafx/css/StyleablePropertyFactory$$Lambda$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory$$Lambda$1;-><init>(Ljava/util/function/Function;ZZ)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/util/function/Function;ZZ)Ljava/util/function/Function;
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v3, Ljavafx/css/StyleablePropertyFactory$$Lambda$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory$$Lambda$1;-><init>(Ljava/util/function/Function;ZZ)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/StyleablePropertyFactory$$Lambda$1;->arg$1:Ljava/util/function/Function;

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/css/StyleablePropertyFactory$$Lambda$1;->arg$2:Z

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/css/StyleablePropertyFactory$$Lambda$1;->arg$3:Z

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Ljavafx/css/StyleablePropertyFactory;->access$lambda$0(Ljava/util/function/Function;ZZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

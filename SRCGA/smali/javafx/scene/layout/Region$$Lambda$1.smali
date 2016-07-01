.class final synthetic Ljavafx/scene/layout/Region$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final arg$1:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/layout/Region$$Lambda$1;->arg$1:Z

    return-void
.end method

.method private static get$Lambda(Z)Ljava/util/function/Function;
    .locals 5

    move v0, p0

    new-instance v1, Ljavafx/scene/layout/Region$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/layout/Region$$Lambda$1;-><init>(Z)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Z)Ljava/util/function/Function;
    .locals 5

    move v0, p0

    new-instance v1, Ljavafx/scene/layout/Region$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/layout/Region$$Lambda$1;-><init>(Z)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/layout/Region$$Lambda$1;->arg$1:Z

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljavafx/scene/layout/Region;->access$lambda$0(ZLjava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

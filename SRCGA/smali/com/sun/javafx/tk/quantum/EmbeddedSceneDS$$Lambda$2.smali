.class final synthetic Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$2;->arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$2;->arg$2:Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljava/lang/String;)Ljava/util/concurrent/Callable;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$2;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljava/lang/String;)Ljava/util/concurrent/Callable;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$2;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$2;->arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$2;->arg$2:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->access$lambda$1(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

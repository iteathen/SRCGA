.class final synthetic Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:Ljava/nio/IntBuffer;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IILjava/nio/IntBuffer;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;->arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;->arg$2:I

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;->arg$3:I

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;->arg$4:Ljava/nio/IntBuffer;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IILjava/nio/IntBuffer;)Ljava/util/function/Supplier;
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    new-instance v4, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move v7, v1

    move v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IILjava/nio/IntBuffer;)V

    move-object v0, v4

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IILjava/nio/IntBuffer;)Ljava/util/function/Supplier;
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    new-instance v4, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move v7, v1

    move v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IILjava/nio/IntBuffer;)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;->arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;->arg$2:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;->arg$3:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;->arg$4:Ljava/nio/IntBuffer;

    invoke-static {v1, v2, v3, v4}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->access$lambda$2(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IILjava/nio/IntBuffer;)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

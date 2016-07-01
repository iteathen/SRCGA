.class final synthetic Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field private final arg$1:Lcom/sun/javafx/sg/prism/NGExternalNode;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:I

.field private final arg$6:Z


# direct methods
.method private constructor <init>(Lcom/sun/javafx/sg/prism/NGExternalNode;IIIIZ)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$1:Lcom/sun/javafx/sg/prism/NGExternalNode;

    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$2:I

    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$3:I

    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$4:I

    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$5:I

    move-object v7, v0

    move v8, v6

    iput-boolean v8, v7, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$6:Z

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/sg/prism/NGExternalNode;IIIIZ)Ljava/util/function/UnaryOperator;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    new-instance v6, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;-><init>(Lcom/sun/javafx/sg/prism/NGExternalNode;IIIIZ)V

    move-object v0, v6

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/sg/prism/NGExternalNode;IIIIZ)Ljava/util/function/UnaryOperator;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    new-instance v6, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;-><init>(Lcom/sun/javafx/sg/prism/NGExternalNode;IIIIZ)V

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$1:Lcom/sun/javafx/sg/prism/NGExternalNode;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$2:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$3:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$4:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$5:I

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->arg$6:Z

    move-object v8, v1

    check-cast v8, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    invoke-static/range {v2 .. v8}, Lcom/sun/javafx/sg/prism/NGExternalNode;->access$lambda$0(Lcom/sun/javafx/sg/prism/NGExternalNode;IIIIZLcom/sun/javafx/sg/prism/NGExternalNode$RenderData;)Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

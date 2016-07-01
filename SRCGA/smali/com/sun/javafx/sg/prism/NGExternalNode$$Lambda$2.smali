.class final synthetic Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field private final arg$1:Lcom/sun/javafx/sg/prism/NGExternalNode;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:I


# direct methods
.method private constructor <init>(Lcom/sun/javafx/sg/prism/NGExternalNode;IIII)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;->arg$1:Lcom/sun/javafx/sg/prism/NGExternalNode;

    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;->arg$2:I

    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;->arg$3:I

    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;->arg$4:I

    move-object v6, v0

    move v7, v5

    iput v7, v6, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;->arg$5:I

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/sg/prism/NGExternalNode;IIII)Ljava/util/function/UnaryOperator;
    .locals 13

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;-><init>(Lcom/sun/javafx/sg/prism/NGExternalNode;IIII)V

    move-object v0, v5

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/sg/prism/NGExternalNode;IIII)Ljava/util/function/UnaryOperator;
    .locals 13

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;-><init>(Lcom/sun/javafx/sg/prism/NGExternalNode;IIII)V

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;->arg$1:Lcom/sun/javafx/sg/prism/NGExternalNode;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;->arg$2:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;->arg$3:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;->arg$4:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;->arg$5:I

    move-object v7, v1

    check-cast v7, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/sg/prism/NGExternalNode;->access$lambda$1(Lcom/sun/javafx/sg/prism/NGExternalNode;IIIILcom/sun/javafx/sg/prism/NGExternalNode$RenderData;)Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.class final synthetic Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:I

.field private final arg$6:I

.field private final arg$7:Lcom/sun/glass/ui/ClipboardAssistance;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$2:I

    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$3:I

    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$4:I

    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$5:I

    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$6:I

    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$7:Lcom/sun/glass/ui/ClipboardAssistance;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljava/util/function/Supplier;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    new-instance v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move-object v15, v6

    invoke-direct/range {v8 .. v15}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)V

    move-object v0, v7

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljava/util/function/Supplier;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    new-instance v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move-object v15, v6

    invoke-direct/range {v8 .. v15}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)V

    move-object v0, v7

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$2:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$3:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$4:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$5:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$6:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$11;->arg$7:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-static/range {v1 .. v7}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$lambda$8(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;IIIIILcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

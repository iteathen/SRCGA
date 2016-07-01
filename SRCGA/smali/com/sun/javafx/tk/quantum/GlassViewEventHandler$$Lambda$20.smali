.class final synthetic Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

.field private final arg$2:I

.field private final arg$3:Lcom/sun/glass/ui/View;

.field private final arg$4:J

.field private final arg$5:I

.field private final arg$6:I

.field private final arg$7:I

.field private final arg$8:I


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;JIIII)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v10, v0

    move v11, v2

    iput v11, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$2:I

    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$3:Lcom/sun/glass/ui/View;

    move-object v10, v0

    move-wide v11, v4

    iput-wide v11, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$4:J

    move-object v10, v0

    move v11, v6

    iput v11, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$5:I

    move-object v10, v0

    move v11, v7

    iput v11, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$6:I

    move-object v10, v0

    move v11, v8

    iput v11, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$7:I

    move-object v10, v0

    move v11, v9

    iput v11, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$8:I

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;JIIII)Ljava/util/function/Supplier;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    new-instance v9, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    move-object v11, v0

    move v12, v1

    move-object v13, v2

    move-wide v14, v3

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-direct/range {v10 .. v19}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;JIIII)V

    move-object v0, v9

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;JIIII)Ljava/util/function/Supplier;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    new-instance v9, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;

    move-object/from16 v20, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v20

    move-object v11, v0

    move v12, v1

    move-object v13, v2

    move-wide v14, v3

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-direct/range {v10 .. v19}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;JIIII)V

    move-object v0, v9

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 10
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$2:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$3:Lcom/sun/glass/ui/View;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$4:J

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$5:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$6:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$7:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$20;->arg$8:I

    invoke-static/range {v1 .. v9}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$lambda$17(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;JIIII)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

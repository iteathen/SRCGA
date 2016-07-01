.class final synthetic Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

.field private final arg$10:I

.field private final arg$11:Z

.field private final arg$12:Z

.field private final arg$2:I

.field private final arg$3:Lcom/sun/glass/ui/View;

.field private final arg$4:D

.field private final arg$5:D

.field private final arg$6:I

.field private final arg$7:I

.field private final arg$8:I

.field private final arg$9:I


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)V
    .locals 22

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move-object/from16 v19, v4

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object/from16 v19, v4

    move/from16 v20, v6

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$2:I

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$3:Lcom/sun/glass/ui/View;

    move-object/from16 v19, v4

    move-wide/from16 v20, v8

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$4:D

    move-object/from16 v19, v4

    move-wide/from16 v20, v10

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$5:D

    move-object/from16 v19, v4

    move/from16 v20, v12

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$6:I

    move-object/from16 v19, v4

    move/from16 v20, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$7:I

    move-object/from16 v19, v4

    move/from16 v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$8:I

    move-object/from16 v19, v4

    move/from16 v20, v15

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$9:I

    move-object/from16 v19, v4

    move/from16 v20, v16

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$10:I

    move-object/from16 v19, v4

    move/from16 v20, v17

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$11:Z

    move-object/from16 v19, v4

    move/from16 v20, v18

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$12:Z

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/util/function/Supplier;
    .locals 33

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    new-instance v15, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;

    move-object/from16 v31, v15

    move-object/from16 v15, v31

    move-object/from16 v16, v31

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    invoke-direct/range {v16 .. v30}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)V

    move-object v1, v15

    return-object v1
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/util/function/Supplier;
    .locals 33

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    new-instance v15, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;

    move-object/from16 v31, v15

    move-object/from16 v15, v31

    move-object/from16 v16, v31

    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    invoke-direct/range {v16 .. v30}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)V

    move-object v1, v15

    return-object v1
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 15
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$2:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$3:Lcom/sun/glass/ui/View;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$4:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$5:D

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$6:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$7:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$8:I

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$9:I

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$10:I

    move-object v13, v0

    iget-boolean v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$11:Z

    move-object v14, v0

    iget-boolean v14, v14, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$16;->arg$12:Z

    invoke-static/range {v1 .. v14}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$lambda$13(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDIIIIIZZ)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

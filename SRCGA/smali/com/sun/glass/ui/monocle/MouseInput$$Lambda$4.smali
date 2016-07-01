.class final synthetic Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/sun/glass/ui/monocle/MouseInput;

.field private final arg$10:Z

.field private final arg$11:Z

.field private final arg$2:Lcom/sun/glass/ui/monocle/MonocleView;

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:I

.field private final arg$6:I

.field private final arg$7:I

.field private final arg$8:I

.field private final arg$9:I


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/monocle/MouseInput;Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object v12, v0

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    move-object v12, v0

    move-object v13, v1

    iput-object v13, v12, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$1:Lcom/sun/glass/ui/monocle/MouseInput;

    move-object v12, v0

    move-object v13, v2

    iput-object v13, v12, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$2:Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v12, v0

    move v13, v3

    iput v13, v12, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$3:I

    move-object v12, v0

    move v13, v4

    iput v13, v12, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$4:I

    move-object v12, v0

    move v13, v5

    iput v13, v12, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$5:I

    move-object v12, v0

    move v13, v6

    iput v13, v12, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$6:I

    move-object v12, v0

    move v13, v7

    iput v13, v12, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$7:I

    move-object v12, v0

    move v13, v8

    iput v13, v12, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$8:I

    move-object v12, v0

    move v13, v9

    iput v13, v12, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$9:I

    move-object v12, v0

    move v13, v10

    iput-boolean v13, v12, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$10:Z

    move-object v12, v0

    move v13, v11

    iput-boolean v13, v12, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$11:Z

    return-void
.end method

.method private static get$Lambda(Lcom/sun/glass/ui/monocle/MouseInput;Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)Ljava/lang/Runnable;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    new-instance v11, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;

    move-object/from16 v24, v11

    move-object/from16 v11, v24

    move-object/from16 v12, v24

    move-object v13, v0

    move-object v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    invoke-direct/range {v12 .. v23}, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;-><init>(Lcom/sun/glass/ui/monocle/MouseInput;Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V

    move-object v0, v11

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/glass/ui/monocle/MouseInput;Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)Ljava/lang/Runnable;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    new-instance v11, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;

    move-object/from16 v24, v11

    move-object/from16 v11, v24

    move-object/from16 v12, v24

    move-object v13, v0

    move-object v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    invoke-direct/range {v12 .. v23}, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;-><init>(Lcom/sun/glass/ui/monocle/MouseInput;Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V

    move-object v0, v11

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$1:Lcom/sun/glass/ui/monocle/MouseInput;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$2:Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$3:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$4:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$5:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$6:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$7:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$8:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$9:I

    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$10:Z

    move-object v11, v0

    iget-boolean v11, v11, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$4;->arg$11:Z

    invoke-static/range {v1 .. v11}, Lcom/sun/glass/ui/monocle/MouseInput;->access$lambda$3(Lcom/sun/glass/ui/monocle/MouseInput;Lcom/sun/glass/ui/monocle/MonocleView;IIIIIIIZZ)V

    return-void
.end method

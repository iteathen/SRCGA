.class final synthetic Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/sun/glass/ui/monocle/MonocleView;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:I

.field private final arg$6:D

.field private final arg$7:I


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/monocle/MonocleView;IIIIDI)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$1:Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v9, v0

    move v10, v2

    iput v10, v9, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$2:I

    move-object v9, v0

    move v10, v3

    iput v10, v9, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$3:I

    move-object v9, v0

    move v10, v4

    iput v10, v9, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$4:I

    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$5:I

    move-object v9, v0

    move-wide v10, v6

    iput-wide v10, v9, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$6:D

    move-object v9, v0

    move v10, v8

    iput v10, v9, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$7:I

    return-void
.end method

.method private static get$Lambda(Lcom/sun/glass/ui/monocle/MonocleView;IIIIDI)Ljava/lang/Runnable;
    .locals 21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    new-instance v9, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move-wide/from16 v16, v6

    move/from16 v18, v8

    invoke-direct/range {v10 .. v18}, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;-><init>(Lcom/sun/glass/ui/monocle/MonocleView;IIIIDI)V

    move-object v1, v9

    return-object v1
.end method

.method public static lambdaFactory$(Lcom/sun/glass/ui/monocle/MonocleView;IIIIDI)Ljava/lang/Runnable;
    .locals 21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    new-instance v9, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move-wide/from16 v16, v6

    move/from16 v18, v8

    invoke-direct/range {v10 .. v18}, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;-><init>(Lcom/sun/glass/ui/monocle/MonocleView;IIIIDI)V

    move-object v1, v9

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$1:Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$2:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$3:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$4:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$5:I

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$6:D

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/MouseInput$$Lambda$3;->arg$7:I

    invoke-static/range {v1 .. v8}, Lcom/sun/glass/ui/monocle/MouseInput;->access$lambda$2(Lcom/sun/glass/ui/monocle/MonocleView;IIIIDI)V

    return-void
.end method

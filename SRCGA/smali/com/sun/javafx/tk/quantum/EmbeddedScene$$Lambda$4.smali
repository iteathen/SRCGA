.class final synthetic Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

.field private final arg$10:Z

.field private final arg$11:Z

.field private final arg$12:I

.field private final arg$13:Z

.field private final arg$14:Z

.field private final arg$15:Z

.field private final arg$16:Z

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:I

.field private final arg$6:I

.field private final arg$7:I

.field private final arg$8:Z

.field private final arg$9:Z


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIIIZZZZIZZZZ)V
    .locals 21

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    move-object/from16 v19, v2

    move/from16 v20, v4

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$2:I

    move-object/from16 v19, v2

    move/from16 v20, v5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$3:I

    move-object/from16 v19, v2

    move/from16 v20, v6

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$4:I

    move-object/from16 v19, v2

    move/from16 v20, v7

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$5:I

    move-object/from16 v19, v2

    move/from16 v20, v8

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$6:I

    move-object/from16 v19, v2

    move/from16 v20, v9

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$7:I

    move-object/from16 v19, v2

    move/from16 v20, v10

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$8:Z

    move-object/from16 v19, v2

    move/from16 v20, v11

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$9:Z

    move-object/from16 v19, v2

    move/from16 v20, v12

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$10:Z

    move-object/from16 v19, v2

    move/from16 v20, v13

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$11:Z

    move-object/from16 v19, v2

    move/from16 v20, v14

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$12:I

    move-object/from16 v19, v2

    move/from16 v20, v15

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$13:Z

    move-object/from16 v19, v2

    move/from16 v20, v16

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$14:Z

    move-object/from16 v19, v2

    move/from16 v20, v17

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$15:Z

    move-object/from16 v19, v2

    move/from16 v20, v18

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$16:Z

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIIIZZZZIZZZZ)Ljava/lang/Runnable;
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    new-instance v16, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;

    move-object/from16 v34, v16

    move-object/from16 v16, v34

    move-object/from16 v17, v34

    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v33, v15

    invoke-direct/range {v17 .. v33}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIIIZZZZIZZZZ)V

    move-object/from16 v0, v16

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIIIZZZZIZZZZ)Ljava/lang/Runnable;
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    new-instance v16, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;

    move-object/from16 v34, v16

    move-object/from16 v16, v34

    move-object/from16 v17, v34

    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v33, v15

    invoke-direct/range {v17 .. v33}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;-><init>(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIIIZZZZIZZZZ)V

    move-object/from16 v0, v16

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 18
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object/from16 v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$1:Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$2:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$3:I

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$4:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$5:I

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$6:I

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$7:I

    move-object v9, v1

    iget-boolean v9, v9, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$8:Z

    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$9:Z

    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$10:Z

    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$11:Z

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$12:I

    move-object v14, v1

    iget-boolean v14, v14, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$13:Z

    move-object v15, v1

    iget-boolean v15, v15, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$14:Z

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$15:Z

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->arg$16:Z

    move/from16 v17, v0

    invoke-static/range {v2 .. v17}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->access$lambda$3(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIIIZZZZIZZZZ)V

    return-void
.end method

.class final synthetic Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

.field private final arg$10:I

.field private final arg$11:I

.field private final arg$12:I

.field private final arg$13:I

.field private final arg$14:I

.field private final arg$15:I

.field private final arg$16:Z

.field private final arg$17:Z

.field private final arg$2:I

.field private final arg$3:Lcom/sun/glass/ui/View;

.field private final arg$4:D

.field private final arg$5:D

.field private final arg$6:D

.field private final arg$7:D

.field private final arg$8:D

.field private final arg$9:D


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)V
    .locals 30

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    move/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    move-object/from16 v27, v3

    invoke-direct/range {v27 .. v27}, Ljava/lang/Object;-><init>()V

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object/from16 v27, v3

    move/from16 v28, v5

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$2:I

    move-object/from16 v27, v3

    move-object/from16 v28, v6

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$3:Lcom/sun/glass/ui/View;

    move-object/from16 v27, v3

    move-wide/from16 v28, v7

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$4:D

    move-object/from16 v27, v3

    move-wide/from16 v28, v9

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$5:D

    move-object/from16 v27, v3

    move-wide/from16 v28, v11

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$6:D

    move-object/from16 v27, v3

    move-wide/from16 v28, v13

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$7:D

    move-object/from16 v27, v3

    move-wide/from16 v28, v15

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$8:D

    move-object/from16 v27, v3

    move-wide/from16 v28, v17

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$9:D

    move-object/from16 v27, v3

    move/from16 v28, v19

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$10:I

    move-object/from16 v27, v3

    move/from16 v28, v20

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$11:I

    move-object/from16 v27, v3

    move/from16 v28, v21

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$12:I

    move-object/from16 v27, v3

    move/from16 v28, v22

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$13:I

    move-object/from16 v27, v3

    move/from16 v28, v23

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$14:I

    move-object/from16 v27, v3

    move/from16 v28, v24

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$15:I

    move-object/from16 v27, v3

    move/from16 v28, v25

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$16:Z

    move-object/from16 v27, v3

    move/from16 v28, v26

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$17:Z

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)Ljava/util/function/Supplier;
    .locals 49

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    new-instance v23, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;

    move-object/from16 v48, v23

    move-object/from16 v23, v48

    move-object/from16 v24, v48

    move-object/from16 v25, v0

    move/from16 v26, v1

    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    move-wide/from16 v30, v5

    move-wide/from16 v32, v7

    move-wide/from16 v34, v9

    move-wide/from16 v36, v11

    move-wide/from16 v38, v13

    move/from16 v40, v15

    move/from16 v41, v16

    move/from16 v42, v17

    move/from16 v43, v18

    move/from16 v44, v19

    move/from16 v45, v20

    move/from16 v46, v21

    move/from16 v47, v22

    invoke-direct/range {v24 .. v47}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)V

    move-object/from16 v0, v23

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)Ljava/util/function/Supplier;
    .locals 49

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    new-instance v23, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;

    move-object/from16 v48, v23

    move-object/from16 v23, v48

    move-object/from16 v24, v48

    move-object/from16 v25, v0

    move/from16 v26, v1

    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    move-wide/from16 v30, v5

    move-wide/from16 v32, v7

    move-wide/from16 v34, v9

    move-wide/from16 v36, v11

    move-wide/from16 v38, v13

    move/from16 v40, v15

    move/from16 v41, v16

    move/from16 v42, v17

    move/from16 v43, v18

    move/from16 v44, v19

    move/from16 v45, v20

    move/from16 v46, v21

    move/from16 v47, v22

    invoke-direct/range {v24 .. v47}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)V

    move-object/from16 v0, v23

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 26
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object/from16 v2, p0

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$2:I

    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$3:Lcom/sun/glass/ui/View;

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$4:D

    move-object v8, v2

    iget-wide v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$5:D

    move-object v10, v2

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$6:D

    move-object v12, v2

    iget-wide v12, v12, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$7:D

    move-object v14, v2

    iget-wide v14, v14, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$8:D

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$9:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$10:I

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$11:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$12:I

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$13:I

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$14:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$15:I

    move/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$16:Z

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$15;->arg$17:Z

    move/from16 v25, v0

    invoke-static/range {v3 .. v25}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$lambda$12(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;ILcom/sun/glass/ui/View;DDDDDDIIIIIIZZ)Ljava/lang/Void;

    move-result-object v3

    move-object v2, v3

    return-object v2
.end method

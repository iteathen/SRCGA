.class final synthetic Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;
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

.field private final arg$2:Lcom/sun/glass/ui/View;

.field private final arg$3:D

.field private final arg$4:D

.field private final arg$5:D

.field private final arg$6:D

.field private final arg$7:I

.field private final arg$8:I

.field private final arg$9:I


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;DDDDIIIIIIIII)V
    .locals 27

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$2:Lcom/sun/glass/ui/View;

    move-object/from16 v23, v3

    move-wide/from16 v24, v6

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$3:D

    move-object/from16 v23, v3

    move-wide/from16 v24, v8

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$4:D

    move-object/from16 v23, v3

    move-wide/from16 v24, v10

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$5:D

    move-object/from16 v23, v3

    move-wide/from16 v24, v12

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$6:D

    move-object/from16 v23, v3

    move/from16 v24, v14

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$7:I

    move-object/from16 v23, v3

    move/from16 v24, v15

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$8:I

    move-object/from16 v23, v3

    move/from16 v24, v16

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$9:I

    move-object/from16 v23, v3

    move/from16 v24, v17

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$10:I

    move-object/from16 v23, v3

    move/from16 v24, v18

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$11:I

    move-object/from16 v23, v3

    move/from16 v24, v19

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$12:I

    move-object/from16 v23, v3

    move/from16 v24, v20

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$13:I

    move-object/from16 v23, v3

    move/from16 v24, v21

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$14:I

    move-object/from16 v23, v3

    move/from16 v24, v22

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$15:I

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;DDDDIIIIIIIII)Ljava/util/function/Supplier;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    new-instance v19, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;

    move-object/from16 v40, v19

    move-object/from16 v19, v40

    move-object/from16 v20, v40

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-wide/from16 v23, v2

    move-wide/from16 v25, v4

    move-wide/from16 v27, v6

    move-wide/from16 v29, v8

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    move/from16 v37, v16

    move/from16 v38, v17

    move/from16 v39, v18

    invoke-direct/range {v20 .. v39}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;DDDDIIIIIIIII)V

    move-object/from16 v0, v19

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;DDDDIIIIIIIII)Ljava/util/function/Supplier;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    new-instance v19, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;

    move-object/from16 v40, v19

    move-object/from16 v19, v40

    move-object/from16 v20, v40

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-wide/from16 v23, v2

    move-wide/from16 v25, v4

    move-wide/from16 v27, v6

    move-wide/from16 v29, v8

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    move/from16 v37, v16

    move/from16 v38, v17

    move/from16 v39, v18

    invoke-direct/range {v20 .. v39}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;DDDDIIIIIIIII)V

    move-object/from16 v0, v19

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 21
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object/from16 v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$1:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$2:Lcom/sun/glass/ui/View;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$3:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$4:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$5:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$6:D

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$7:I

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$8:I

    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$9:I

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$10:I

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$11:I

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$12:I

    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$13:I

    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$14:I

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$$Lambda$6;->arg$15:I

    move/from16 v20, v0

    invoke-static/range {v2 .. v20}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$lambda$3(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/glass/ui/View;DDDDIIIIIIIII)Ljava/lang/Void;

    move-result-object v2

    move-object v1, v2

    return-object v1
.end method

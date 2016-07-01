.class final Ljavafx/stage/Window$TKBoundsConfigurator;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKPulseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TKBoundsConfigurator"
.end annotation


# instance fields
.field private clientHeight:D

.field private clientWidth:D

.field private dirty:Z

.field final synthetic this$0:Ljavafx/stage/Window;

.field private windowHeight:D

.field private windowWidth:D

.field private x:D

.field private xGravity:F

.field private y:D

.field private yGravity:F


# direct methods
.method public constructor <init>(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 1214
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/Window$TKBoundsConfigurator;->this$0:Ljavafx/stage/Window;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1215
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/stage/Window$TKBoundsConfigurator;->reset()V

    .line 1216
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    .line 1294
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-object v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->x:D

    .line 1295
    move-object v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    iput-wide v2, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->y:D

    .line 1296
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->xGravity:F

    .line 1297
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->yGravity:F

    .line 1298
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->windowWidth:D

    .line 1299
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->windowHeight:D

    .line 1300
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->clientWidth:D

    .line 1301
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->clientHeight:D

    .line 1302
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->dirty:Z

    .line 1303
    return-void
.end method

.method private setDirty()V
    .locals 3

    .prologue
    .line 1306
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->dirty:Z

    if-nez v1, :cond_0

    .line 1307
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->requestNextPulse()V

    .line 1308
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->dirty:Z

    .line 1310
    :cond_0
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 12

    .prologue
    .line 1273
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->dirty:Z

    if-eqz v1, :cond_0

    .line 1274
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Window$TKBoundsConfigurator;->this$0:Ljavafx/stage/Window;

    iget-object v1, v1, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/stage/Window$TKBoundsConfigurator;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    double-to-float v2, v2

    move-object v3, v0

    iget-wide v3, v3, Ljavafx/stage/Window$TKBoundsConfigurator;->y:D

    .line 1275
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x0

    :goto_1
    double-to-float v3, v3

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/stage/Window$TKBoundsConfigurator;->x:D

    .line 1276
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    move-object v5, v0

    iget-wide v5, v5, Ljavafx/stage/Window$TKBoundsConfigurator;->y:D

    .line 1277
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_3
    move-object v6, v0

    iget-wide v6, v6, Ljavafx/stage/Window$TKBoundsConfigurator;->windowWidth:D

    double-to-float v6, v6

    move-object v7, v0

    iget-wide v7, v7, Ljavafx/stage/Window$TKBoundsConfigurator;->windowHeight:D

    double-to-float v7, v7

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/stage/Window$TKBoundsConfigurator;->clientWidth:D

    double-to-float v8, v8

    move-object v9, v0

    iget-wide v9, v9, Ljavafx/stage/Window$TKBoundsConfigurator;->clientHeight:D

    double-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Ljavafx/stage/Window$TKBoundsConfigurator;->xGravity:F

    move-object v11, v0

    iget v11, v11, Ljavafx/stage/Window$TKBoundsConfigurator;->yGravity:F

    .line 1274
    invoke-interface/range {v1 .. v11}, Lcom/sun/javafx/tk/TKStage;->setBounds(FFZZFFFFFF)V

    .line 1284
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Window$TKBoundsConfigurator;->reset()V

    .line 1286
    :cond_0
    return-void

    .line 1274
    :cond_1
    move-object v2, v0

    iget-wide v2, v2, Ljavafx/stage/Window$TKBoundsConfigurator;->x:D

    goto :goto_0

    .line 1275
    :cond_2
    move-object v3, v0

    iget-wide v3, v3, Ljavafx/stage/Window$TKBoundsConfigurator;->y:D

    goto :goto_1

    .line 1276
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 1277
    :cond_4
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public pulse()V
    .locals 2

    .prologue
    .line 1290
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/Window$TKBoundsConfigurator;->apply()V

    .line 1291
    return-void
.end method

.method public setClientHeight(D)V
    .locals 7

    .prologue
    .line 1246
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-wide v1, p1

    .local v1, "clientHeight":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/Window$TKBoundsConfigurator;->clientHeight:D

    .line 1247
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/stage/Window$TKBoundsConfigurator;->setDirty()V

    .line 1248
    return-void
.end method

.method public setClientWidth(D)V
    .locals 7

    .prologue
    .line 1241
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-wide v1, p1

    .local v1, "clientWidth":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/Window$TKBoundsConfigurator;->clientWidth:D

    .line 1242
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/stage/Window$TKBoundsConfigurator;->setDirty()V

    .line 1243
    return-void
.end method

.method public setLocation(DDFF)V
    .locals 11

    .prologue
    .line 1254
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move/from16 v5, p5

    .local v5, "xGravity":F
    move/from16 v6, p6

    .local v6, "yGravity":F
    move-object v7, v0

    move-wide v8, v1

    iput-wide v8, v7, Ljavafx/stage/Window$TKBoundsConfigurator;->x:D

    .line 1255
    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Ljavafx/stage/Window$TKBoundsConfigurator;->y:D

    .line 1256
    move-object v7, v0

    move v8, v5

    iput v8, v7, Ljavafx/stage/Window$TKBoundsConfigurator;->xGravity:F

    .line 1257
    move-object v7, v0

    move v8, v6

    iput v8, v7, Ljavafx/stage/Window$TKBoundsConfigurator;->yGravity:F

    .line 1258
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/stage/Window$TKBoundsConfigurator;->setDirty()V

    .line 1259
    return-void
.end method

.method public setSize(DDDD)V
    .locals 13

    .prologue
    .line 1265
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-wide v1, p1

    .local v1, "windowWidth":D
    move-wide/from16 v3, p3

    .local v3, "windowHeight":D
    move-wide/from16 v5, p5

    .local v5, "clientWidth":D
    move-wide/from16 v7, p7

    .local v7, "clientHeight":D
    move-object v9, v0

    move-wide v10, v1

    iput-wide v10, v9, Ljavafx/stage/Window$TKBoundsConfigurator;->windowWidth:D

    .line 1266
    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Ljavafx/stage/Window$TKBoundsConfigurator;->windowHeight:D

    .line 1267
    move-object v9, v0

    move-wide v10, v5

    iput-wide v10, v9, Ljavafx/stage/Window$TKBoundsConfigurator;->clientWidth:D

    .line 1268
    move-object v9, v0

    move-wide v10, v7

    iput-wide v10, v9, Ljavafx/stage/Window$TKBoundsConfigurator;->clientHeight:D

    .line 1269
    move-object v9, v0

    invoke-direct {v9}, Ljavafx/stage/Window$TKBoundsConfigurator;->setDirty()V

    .line 1270
    return-void
.end method

.method public setWindowHeight(D)V
    .locals 7

    .prologue
    .line 1236
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-wide v1, p1

    .local v1, "windowHeight":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/Window$TKBoundsConfigurator;->windowHeight:D

    .line 1237
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/stage/Window$TKBoundsConfigurator;->setDirty()V

    .line 1238
    return-void
.end method

.method public setWindowWidth(D)V
    .locals 7

    .prologue
    .line 1231
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-wide v1, p1

    .local v1, "windowWidth":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/stage/Window$TKBoundsConfigurator;->windowWidth:D

    .line 1232
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/stage/Window$TKBoundsConfigurator;->setDirty()V

    .line 1233
    return-void
.end method

.method public setX(DF)V
    .locals 9

    .prologue
    .line 1219
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-wide v2, p1

    .local v2, "x":D
    move v4, p3

    .local v4, "xGravity":F
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Ljavafx/stage/Window$TKBoundsConfigurator;->x:D

    .line 1220
    move-object v5, v1

    move v6, v4

    iput v6, v5, Ljavafx/stage/Window$TKBoundsConfigurator;->xGravity:F

    .line 1221
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/stage/Window$TKBoundsConfigurator;->setDirty()V

    .line 1222
    return-void
.end method

.method public setY(DF)V
    .locals 9

    .prologue
    .line 1225
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Window$TKBoundsConfigurator;
    move-wide v2, p1

    .local v2, "y":D
    move v4, p3

    .local v4, "yGravity":F
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Ljavafx/stage/Window$TKBoundsConfigurator;->y:D

    .line 1226
    move-object v5, v1

    move v6, v4

    iput v6, v5, Ljavafx/stage/Window$TKBoundsConfigurator;->yGravity:F

    .line 1227
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/stage/Window$TKBoundsConfigurator;->setDirty()V

    .line 1228
    return-void
.end method

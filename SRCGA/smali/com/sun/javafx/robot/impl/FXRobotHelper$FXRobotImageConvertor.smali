.class public abstract Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotImageConvertor;
.super Ljava/lang/Object;
.source "FXRobotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/robot/impl/FXRobotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FXRobotImageConvertor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotImageConvertor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract convertToFXRobotImage(Ljava/lang/Object;)Lcom/sun/javafx/robot/FXRobotImage;
.end method

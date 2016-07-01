.class Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;
.super Ljava/lang/Object;
.source "PrintLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/logging/PrintLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadLocalData"
.end annotation


# instance fields
.field phaseName:Ljava/lang/String;

.field phaseStart:J

.field final synthetic this$0:Lcom/sun/javafx/logging/PrintLogger;


# direct methods
.method constructor <init>(Lcom/sun/javafx/logging/PrintLogger;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/logging/PrintLogger;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;->this$0:Lcom/sun/javafx/logging/PrintLogger;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

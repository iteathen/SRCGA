.class Lcom/sun/javafx/logging/PrintLogger$1;
.super Ljava/lang/ThreadLocal;
.source "PrintLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/logging/PrintLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/logging/PrintLogger;


# direct methods
.method constructor <init>(Lcom/sun/javafx/logging/PrintLogger;)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/logging/PrintLogger;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/logging/PrintLogger$1;->this$0:Lcom/sun/javafx/logging/PrintLogger;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger$1;
    new-instance v1, Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/logging/PrintLogger$1;->this$0:Lcom/sun/javafx/logging/PrintLogger;

    invoke-direct {v2, v3}, Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;-><init>(Lcom/sun/javafx/logging/PrintLogger;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/logging/PrintLogger$1;
    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger$1;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/logging/PrintLogger$1;->initialValue()Lcom/sun/javafx/logging/PrintLogger$ThreadLocalData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/logging/PrintLogger$1;
    return-object v0
.end method

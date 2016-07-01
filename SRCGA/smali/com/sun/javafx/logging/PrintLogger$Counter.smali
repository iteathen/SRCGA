.class Lcom/sun/javafx/logging/PrintLogger$Counter;
.super Ljava/lang/Object;
.source "PrintLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/logging/PrintLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Counter"
.end annotation


# instance fields
.field value:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger$Counter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/logging/PrintLogger$1;)V
    .locals 3

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/logging/PrintLogger$Counter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/logging/PrintLogger$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/logging/PrintLogger$Counter;-><init>()V

    return-void
.end method

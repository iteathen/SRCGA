.class final enum Lcom/sun/javafx/css/Combinator$1;
.super Lcom/sun/javafx/css/Combinator;
.source "Combinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/Combinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Combinator$1;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/css/Combinator;-><init>(Ljava/lang/String;ILcom/sun/javafx/css/Combinator$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Combinator$1;
    const-string v1, ">"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Combinator$1;
    return-object v0
.end method

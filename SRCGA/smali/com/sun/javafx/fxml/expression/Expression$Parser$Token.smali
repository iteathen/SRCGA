.class public Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/fxml/expression/Expression$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public final type:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    move-object v1, p1

    .local v1, "type":Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->type:Lcom/sun/javafx/fxml/expression/Expression$Parser$TokenType;

    .line 52
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->value:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/Expression$Parser$Token;
    return-object v0
.end method

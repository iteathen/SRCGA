.class Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;
.super Lcom/sun/javafx/css/parser/LexerState;
.source "CSSLexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/parser/CSSLexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnitsState"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/sun/javafx/css/parser/CSSLexer;

.field private final units:[[Lcom/sun/javafx/css/parser/Recognizer;

.field private unitsMask:I


# direct methods
.method constructor <init>(Lcom/sun/javafx/css/parser/CSSLexer;)V
    .locals 11

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 627
    move-object v2, v0

    const/4 v3, -0x1

    const-string v4, "UnitsState"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/css/parser/LexerState;-><init>(ILjava/lang/String;Lcom/sun/javafx/css/parser/Recognizer;[Lcom/sun/javafx/css/parser/Recognizer;)V

    .line 599
    move-object v2, v0

    const/16 v3, 0xf

    new-array v3, v3, [[Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 603
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$200(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$300(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x1

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 604
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$400(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$500(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$600(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 605
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$500(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$300(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x3

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 606
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$500(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$700(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x4

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 607
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$600(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$800(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$900(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x3

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$400(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x5

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 608
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1000(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1100(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x6

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 609
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$300(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$300(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x7

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 610
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$300(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1200(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/16 v5, 0x8

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 611
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1300(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$200(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/16 v5, 0x9

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 612
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1300(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1400(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/16 v5, 0xa

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 613
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1300(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$700(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/16 v5, 0xb

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 614
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$800(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$900(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$400(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/16 v5, 0xc

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 615
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1200(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/16 v5, 0xd

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    .line 616
    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1400(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1500(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$800(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x3

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v9}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1100(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/16 v5, 0xe

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/sun/javafx/css/parser/Recognizer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    invoke-static {}, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState$$Lambda$1;->lambdaFactory$()Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v6, v4, v5

    iput-object v3, v2, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->units:[[Lcom/sun/javafx/css/parser/Recognizer;

    .line 621
    move-object v2, v0

    const/16 v3, 0x7fff

    iput v3, v2, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->unitsMask:I

    .line 624
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->index:I

    .line 628
    return-void
.end method

.method static synthetic access$lambda$0(I)Z
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->lambda$new$222(I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private static synthetic lambda$new$222(I)Z
    .locals 3

    .prologue
    .line 617
    move v0, p0

    .local v0, "c":I
    move v1, v0

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "c":I
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accepts(I)Z
    .locals 9

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;
    move v1, p1

    .local v1, "c":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->this$0:Lcom/sun/javafx/css/parser/CSSLexer;

    invoke-static {v4}, Lcom/sun/javafx/css/parser/CSSLexer;->access$1600(Lcom/sun/javafx/css/parser/CSSLexer;)Lcom/sun/javafx/css/parser/Recognizer;

    move-result-object v4

    move v5, v1

    invoke-interface {v4, v5}, Lcom/sun/javafx/css/parser/Recognizer;->recognize(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v1

    const/16 v5, 0x25

    if-eq v4, v5, :cond_0

    .line 670
    const/4 v4, 0x0

    move v0, v4

    .line 695
    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;
    :goto_0
    return v0

    .line 676
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->unitsMask:I

    if-nez v4, :cond_1

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 678
    :cond_1
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->index:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->index:I

    .line 680
    const/4 v4, 0x0

    move v2, v4

    .local v2, "n":I
    :goto_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->units:[[Lcom/sun/javafx/css/parser/Recognizer;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 682
    const/4 v4, 0x1

    move v5, v2

    shl-int/2addr v4, v5

    move v3, v4

    .line 685
    .local v3, "u":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->unitsMask:I

    move v5, v3

    and-int/2addr v4, v5

    if-nez v4, :cond_3

    .line 680
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 687
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->index:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->units:[[Lcom/sun/javafx/css/parser/Recognizer;

    move v6, v2

    aget-object v5, v5, v6

    array-length v5, v5

    if-ge v4, v5, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->units:[[Lcom/sun/javafx/css/parser/Recognizer;

    move v5, v2

    aget-object v4, v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->index:I

    aget-object v4, v4, v5

    move v5, v1

    invoke-interface {v4, v5}, Lcom/sun/javafx/css/parser/Recognizer;->recognize(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 689
    :cond_4
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->unitsMask:I

    move v6, v3

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->unitsMask:I

    goto :goto_2

    .line 695
    .end local v3    # "u":I
    :cond_5
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public getType()I
    .locals 4

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;
    const/4 v2, 0x0

    move v1, v2

    .line 637
    .local v1, "type":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->unitsMask:I

    sparse-switch v2, :sswitch_data_0

    .line 653
    const/4 v2, 0x0

    move v1, v2

    .line 657
    :goto_0
    move-object v2, v0

    const/16 v3, 0x7fff

    iput v3, v2, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->unitsMask:I

    .line 658
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;->index:I

    .line 660
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;
    return v0

    .line 638
    .restart local v0    # "this":Lcom/sun/javafx/css/parser/CSSLexer$UnitsState;
    :sswitch_0
    const/16 v2, 0xe

    move v1, v2

    goto :goto_0

    .line 639
    :sswitch_1
    const/16 v2, 0x17

    move v1, v2

    goto :goto_0

    .line 640
    :sswitch_2
    const/16 v2, 0xf

    move v1, v2

    goto :goto_0

    .line 641
    :sswitch_3
    const/16 v2, 0x10

    move v1, v2

    goto :goto_0

    .line 642
    :sswitch_4
    const/16 v2, 0x18

    move v1, v2

    goto :goto_0

    .line 643
    :sswitch_5
    const/16 v2, 0x11

    move v1, v2

    goto :goto_0

    .line 644
    :sswitch_6
    const/16 v2, 0x12

    move v1, v2

    goto :goto_0

    .line 645
    :sswitch_7
    const/16 v2, 0x2e

    move v1, v2

    goto :goto_0

    .line 646
    :sswitch_8
    const/16 v2, 0x13

    move v1, v2

    goto :goto_0

    .line 647
    :sswitch_9
    const/16 v2, 0x14

    move v1, v2

    goto :goto_0

    .line 648
    :sswitch_a
    const/16 v2, 0x15

    move v1, v2

    goto :goto_0

    .line 649
    :sswitch_b
    const/16 v2, 0x19

    move v1, v2

    goto :goto_0

    .line 650
    :sswitch_c
    const/16 v2, 0x2d

    move v1, v2

    goto :goto_0

    .line 651
    :sswitch_d
    const/16 v2, 0x1a

    move v1, v2

    goto :goto_0

    .line 652
    :sswitch_e
    const/16 v2, 0x16

    move v1, v2

    goto :goto_0

    .line 637
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
    .end sparse-switch
.end method

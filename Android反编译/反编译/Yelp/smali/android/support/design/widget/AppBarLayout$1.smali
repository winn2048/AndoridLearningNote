.class Landroid/support/design/widget/AppBarLayout$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/AppBarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/AppBarLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$1;->this$0:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .parameter "v"
    .parameter "insets"

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$1;->this$0:Landroid/support/design/widget/AppBarLayout;

    #calls: Landroid/support/design/widget/AppBarLayout;->setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V
    invoke-static {v0, p2}, Landroid/support/design/widget/AppBarLayout;->access$000(Landroid/support/design/widget/AppBarLayout;Landroid/support/v4/view/WindowInsetsCompat;)V

    .line 155
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

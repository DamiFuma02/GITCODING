package com.company;
//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//


import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Graphics;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.StringTokenizer;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class ChessboardView extends JPanel implements MouseListener {
    private static final int UNKNOWN = -1;
    private static final int WIDTH = 500;
    private static final int HEIGHT = 500;
    private final int n;
    private double hmg;
    private double vmg;
    private double w;
    private double h;
    private int[] queens;

    /**
     * @param var1 dimensione della scacchiera
     */
    public ChessboardView(int var1) {
        this.n = var1;
        this.queens = new int[var1];

        for(int var2 = 0; var2 < var1; ++var2) {
            this.queens[var2] = -1;
        }

        JFrame var4 = new JFrame("Rompicapo delle N Regine");
        var4.setSize(500, 500);
        Container var3 = var4.getContentPane();
        var3.setLayout(new BorderLayout());
        var3.add("Center", this);
        var4.setDefaultCloseOperation(3);
        var4.setVisible(true);
        this.addMouseListener(this);
    }

    public synchronized void setQueens(String var1) {
        for(int var2 = 0; var2 < this.n; ++var2) {
            this.queens[var2] = -1;
        }

        StringTokenizer var7 = new StringTokenizer(var1);

        while(var7.hasMoreTokens()) {
            String var3 = var7.nextToken();
            int var4 = var3.charAt(1) > '9' ? this.n - var3.charAt(1) + 65 - 10 : this.n - var3.charAt(1) + 49 - 1;
            int var5 = var3.charAt(0) - 97;
            if (0 <= var4 && var4 < this.n && 0 <= var5 && var5 < this.n) {
                this.queens[var4] = var5;
            }
        }

        this.repaint();

        try {
            this.wait();
        } catch (InterruptedException var6) {
        }

    }

    public void paint(Graphics var1) {
        int var2 = this.getWidth();
        int var3 = this.getHeight();
        this.hmg = 0.05D * (double)var2;
        this.vmg = 0.05D * (double)var3;
        var1.setColor(Color.gray);
        var1.fillRect(0, 0, var2, var3);
        var1.setColor(new Color(255, 204, 76));
        var1.fillRect(0, 0, (int)((double)var2 - this.hmg), (int)this.vmg);
        var1.fillRect((int)this.hmg, (int)((double)var3 - this.vmg), (int)((double)var2 - this.hmg), (int)this.vmg);
        var1.fillRect(0, (int)this.vmg, (int)this.hmg, (int)((double)var3 - this.vmg));
        var1.fillRect((int)((double)var2 - this.hmg), 0, (int)this.hmg, (int)((double)var3 - this.vmg));
        this.w = 0.9D * (double)var2 / (double)this.n;
        this.h = 0.9D * (double)var3 / (double)this.n;

        for(int var4 = 0; var4 < this.n; ++var4) {
            for(int var5 = 0; var5 < this.n; ++var5) {
                Color var6 = (var4 + var5) % 2 == 0 ? new Color(255, 204, 76) : new Color(123, 61, 30);
                var1.setColor(var6);
                int var7 = (int)(this.hmg + (double)var5 * this.w) + 1;
                int var8 = (int)(this.vmg + (double)var4 * this.h) + 1;
                var1.fillRect(var7, var8, (int)this.w, (int)this.h);
                var1.setColor(Color.black);
                var1.drawRect(var7, var8, (int)this.w, (int)this.h);
                if (this.queens[var4] == var5) {
                    int[] var9 = new int[]{var7 + (int)(0.2D * this.w), var7 + (int)(0.2D * this.w), var7 + (int)(0.35D * this.w), var7 + (int)(0.5D * this.w), var7 + (int)(0.65D * this.w), var7 + (int)(0.8D * this.w), var7 + (int)(0.8D * this.w), var7 + (int)(0.7D * this.w), var7 + (int)(0.3D * this.w)};
                    int[] var10 = new int[]{var8 + (int)(0.5D * this.w), var8 + (int)(0.2D * this.w), var8 + (int)(0.5D * this.w), var8 + (int)(0.2D * this.w), var8 + (int)(0.5D * this.w), var8 + (int)(0.2D * this.w), var8 + (int)(0.5D * this.w), var8 + (int)(0.8D * this.w), var8 + (int)(0.8D * this.w)};
                    var1.setColor(new Color(0, 0, 51));
                    var1.fillPolygon(var9, var10, 9);
                    var1.setColor(new Color(204, 204, 255));
                    var1.drawPolygon(var9, var10, 9);
                }
            }
        }

    }

    public synchronized void mouseReleased(MouseEvent var1) {
        this.notify();
    }

    public void mouseEntered(MouseEvent var1) {
    }

    public void mouseExited(MouseEvent var1) {
    }

    public void mousePressed(MouseEvent var1) {
    }

    public void mouseClicked(MouseEvent var1) {
    }
}

